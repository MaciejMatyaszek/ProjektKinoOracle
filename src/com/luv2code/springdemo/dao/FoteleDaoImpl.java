package com.luv2code.springdemo.dao;

import com.luv2code.springdemo.entities.Film;
import com.luv2code.springdemo.entities.Fotele;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class FoteleDaoImpl implements FoteleDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Fotele> getFotele() {
        //Pobranie sessji
        Session currentSession = sessionFactory.getCurrentSession();

        //Zapytanie
        Query<Fotele> theQuery =
                currentSession.createQuery("from Fotele ", Fotele.class);

        //wywolanie zapytania i lista
        List<Fotele> fotele = theQuery.getResultList();

        //zwrocenie listy


        return fotele;
    }

    @Override
    public void saveFotele(Fotele theFotele) {
        Session currentSession = sessionFactory.getCurrentSession();

        currentSession.saveOrUpdate(theFotele);
    }

    @Override
    public void updateFotele(Fotele theFotele) {
        Session currentSession = sessionFactory.getCurrentSession();

        currentSession.update(theFotele);
    }

    @Override
    public Fotele getFoteleById(int theId) {
        Session currentSession = sessionFactory.getCurrentSession();

        Fotele theFotele = currentSession.get(Fotele.class, theId);

        return theFotele;
    }

    @Override
    public void deleteFotele(int theId) {
        Session currentSession = sessionFactory.getCurrentSession();

        Query theQuery =
                currentSession.createQuery("delete from Fotele where id_fotele=:id_fotele");

        theQuery.setParameter("id_fotele", theId);
        theQuery.executeUpdate();
    }
}
