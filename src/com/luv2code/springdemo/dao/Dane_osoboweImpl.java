package com.luv2code.springdemo.dao;

import com.luv2code.springdemo.entities.Bilety;
import com.luv2code.springdemo.entities.Dane_osobowe;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class Dane_osoboweImpl implements Dane_osoboweDao{

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Dane_osobowe> getDane_osobowe() {
        //Pobranie sessji
        Session currentSession = sessionFactory.getCurrentSession();

        //Zapytanie
        Query<Dane_osobowe> theQuery =
                currentSession.createQuery("from Dane_osobowe ", Dane_osobowe.class);

        //wywolanie zapytania i lista
        List<Dane_osobowe> dane_osobowe = theQuery.getResultList();

        //zwrocenie listy
        return dane_osobowe;
    }

    @Override
    public void saveDane_osobowe(Dane_osobowe theDane_osobowe) {
        Session currentSession = sessionFactory.getCurrentSession();

        currentSession.saveOrUpdate(theDane_osobowe);
    }

    @Override
    public void updateDane_osobowe(Dane_osobowe theDane_osobowe) {
        Session currentSession = sessionFactory.getCurrentSession();

        currentSession.update(theDane_osobowe);
    }

    @Override
    public Dane_osobowe getDane_osoboweById(int theId) {
        Session currentSession = sessionFactory.getCurrentSession();
        Dane_osobowe theDane_osobowe = currentSession.get(Dane_osobowe.class, theId);

        return theDane_osobowe;
    }

    @Override
    public void deleteDane_osobowe(int theId) {
        Session currentSession = sessionFactory.getCurrentSession();

        Query theQuery =
                currentSession.createQuery("delete from Dane_osobowe where id_dane_osobowe=:id_dane_osobowe");

        theQuery.setParameter("id_dane_osobowe", theId);
        theQuery.executeUpdate();
    }
}
