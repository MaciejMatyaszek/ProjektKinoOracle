package com.luv2code.springdemo.dao;

import com.luv2code.springdemo.entities.Bilety;
import com.luv2code.springdemo.entities.Film;
import com.luv2code.springdemo.entities.Miejsca;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MiejscaImpl implements MiejscaDao{

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Miejsca> getMiejsca() {
        //Pobranie sessji
        Session currentSession = sessionFactory.getCurrentSession();

        //Zapytanie
        Query<Miejsca> theQuery =
                currentSession.createQuery("from Miejsca ",Miejsca.class);

        //wywolanie zapytania i lista
        List<Miejsca> miejsca = theQuery.getResultList();

        //zwrocenie listy


        return miejsca;
    }

    @Override
    public void saveMiejsca(Miejsca theMiejsca) {
        Session currentSession = sessionFactory.getCurrentSession();

        currentSession.saveOrUpdate(theMiejsca);
    }

    @Override
    public void updateMiejsca(Miejsca theMiejsca) {
        Session currentSession = sessionFactory.getCurrentSession();

        currentSession.update(theMiejsca);
    }

    @Override
    public Miejsca getMiejscaById(int theId) {
        Session currentSession = sessionFactory.getCurrentSession();
        Miejsca theMiejsca  = currentSession.get(Miejsca .class, theId);

        return theMiejsca;
    }

    @Override
    public List<Miejsca> getMiejscaByIdSeansu(int theId) {
        Session currentSession = sessionFactory.getCurrentSession();
        Query theQuery =
                currentSession.createQuery(" from Miejsca where id_seansu=:id_seansu");
        theQuery.setParameter("id_seansu", theId);
        List<Miejsca> miejscas=theQuery.getResultList();
        return miejscas;
    }

    @Override
    public void deleteMiejsca(int theId) {
        Session currentSession = sessionFactory.getCurrentSession();

        Query theQuery =
                currentSession.createQuery("delete from Miejsca where id_miejsca=:id_miejsca");

        theQuery.setParameter("id_miejsca", theId);
        theQuery.executeUpdate();
    }
}
