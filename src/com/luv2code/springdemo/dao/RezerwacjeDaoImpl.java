package com.luv2code.springdemo.dao;

import com.luv2code.springdemo.entities.Film;
import com.luv2code.springdemo.entities.Rezerwacje;
import com.luv2code.springdemo.entities.Seans;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import java.sql.SQLOutput;

import java.util.List;

@Repository
public class RezerwacjeDaoImpl implements RezerwacjeDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Rezerwacje> getRezerwacje() {
        //Pobranie sessji
        Session currentSession = sessionFactory.getCurrentSession();

        //Zapytanie
        Query<Rezerwacje> theQuery =
                currentSession.createQuery("from Rezerwacje ", Rezerwacje.class);

        //wywolanie zapytania i lista

        List<Rezerwacje> rezerwacjes = theQuery.getResultList();
        System.out.println(rezerwacjes.size());

        //zwrocenie listy


        return rezerwacjes;
    }


    @Override
    public void saveRezerwacje(Rezerwacje theRezerwacje) {
        Session currentSession = sessionFactory.getCurrentSession();

        currentSession.saveOrUpdate(theRezerwacje);
    }

    @Override
    public void updateRezerwacje(Rezerwacje theRezerwacje) {
        Session currentSession = sessionFactory.getCurrentSession();

        currentSession.update(theRezerwacje);
    }

    @Override
    public Rezerwacje getRezerwacjeById(int theId) {
        Session currentSession = sessionFactory.getCurrentSession();

        Rezerwacje theRezerwacje = currentSession.get(Rezerwacje.class, theId);

        return theRezerwacje;
    }

    @Override
    public void deleteRezerwacje(int theId) {
        Session currentSession = sessionFactory.getCurrentSession();

        Query theQuery =
                currentSession.createQuery("delete from Rezerwacje where id_rezerwacje=:id_rezerwacje");

        theQuery.setParameter("id_rezerwacje", theId);
        theQuery.executeUpdate();
    }
}
