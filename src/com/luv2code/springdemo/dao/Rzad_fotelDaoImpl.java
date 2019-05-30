package com.luv2code.springdemo.dao;

import com.luv2code.springdemo.entities.Rezerwacje;
import com.luv2code.springdemo.entities.Rzad_fotel;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class Rzad_fotelDaoImpl implements Rzad_fotelDao {
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Rzad_fotel> getRzad_fotel() {
        //Pobranie sessji
        Session currentSession = sessionFactory.getCurrentSession();

        //Zapytanie
        Query<Rzad_fotel> theQuery =
                currentSession.createQuery("from Rzad_fotel ", Rzad_fotel.class);

        //wywolanie zapytania i lista
        List<Rzad_fotel> rzad_fotele = theQuery.getResultList();

        //zwrocenie listy


        return rzad_fotele;
    }

    @Override
    public void saveRzad_fotel(Rzad_fotel theRzad_fotel) {
        Session currentSession = sessionFactory.getCurrentSession();

        currentSession.saveOrUpdate(theRzad_fotel);
    }

    @Override
    public void updateRzad_fotel(Rzad_fotel theRzad_fotel) {
        Session currentSession = sessionFactory.getCurrentSession();

        currentSession.update(theRzad_fotel);
    }

    @Override
    public Rzad_fotel getRzad_fotelById(int theId) {
        Session currentSession = sessionFactory.getCurrentSession();

        Rzad_fotel theRzad_fotel = currentSession.get(Rzad_fotel.class, theId);

        return theRzad_fotel;
    }

    @Override
    public void deleteRzad_fotel(int theId) {
        Session currentSession = sessionFactory.getCurrentSession();

        Query theQuery =
                currentSession.createQuery("delete from Rzad_fotel where id_rzad_fotel=:id_rzad_fotel");

        theQuery.setParameter("id_rzad_fotel", theId);
        theQuery.executeUpdate();

    }
}
