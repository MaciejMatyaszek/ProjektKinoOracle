package com.luv2code.springdemo.dao;

import com.luv2code.springdemo.entities.Bilety;
import com.luv2code.springdemo.entities.Film;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public class BiletyDaoImpl implements BiletyDao {
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Bilety> getBilety() {
        //Pobranie sessji
        Session currentSession = sessionFactory.getCurrentSession();

        //Zapytanie
        Query<Bilety> theQuery =
                currentSession.createQuery("from Bilety ", Bilety.class);

        //wywolanie zapytania i lista
        List<Bilety> bilety = theQuery.getResultList();

        //zwrocenie listy
        return bilety;
    }

    @Override
    public void saveBilety(Bilety theBilety) {
        Session currentSession = sessionFactory.getCurrentSession();

        currentSession.saveOrUpdate(theBilety);
    }

    @Override
    public void updateBilety(Bilety theBilety) {
        Session currentSession = sessionFactory.getCurrentSession();

        currentSession.update(theBilety);
    }

    @Override
    public Bilety getBiletyById(int theId) {
        Session currentSession = sessionFactory.getCurrentSession();
        Bilety theBilety = currentSession.get(Bilety.class, theId);

        return theBilety;

    }

    @Override
    public void deleteBilety(int theId) {
        Session currentSession = sessionFactory.getCurrentSession();

        Query theQuery =
                currentSession.createQuery("delete from Bilety where bilet_id=:id_biletu");

        theQuery.setParameter("id_biletu", theId);
        theQuery.executeUpdate();
    }
}
