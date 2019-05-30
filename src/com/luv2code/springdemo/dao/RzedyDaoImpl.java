package com.luv2code.springdemo.dao;

import com.luv2code.springdemo.entities.Rzad_fotel;
import com.luv2code.springdemo.entities.Rzedy;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class RzedyDaoImpl implements RzedyDao{

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Rzedy> getRzedy() {
        //Pobranie sessji
        Session currentSession = sessionFactory.getCurrentSession();

        //Zapytanie
        Query<Rzedy> theQuery =
                currentSession.createQuery("from Rzedy ", Rzedy.class);

        //wywolanie zapytania i lista
        List<Rzedy> rzedy= theQuery.getResultList();

        //zwrocenie listy


        return rzedy;
    }

    @Override
    public void saveRzedy(Rzedy theRzedy) {
        Session currentSession = sessionFactory.getCurrentSession();

        currentSession.saveOrUpdate(theRzedy);
    }

    @Override
    public void updateRzedy(Rzedy theRzedy) {
        Session currentSession = sessionFactory.getCurrentSession();

        currentSession.update(theRzedy);
    }

    @Override
    public Rzedy getRzedy(int theId) {
        Session currentSession = sessionFactory.getCurrentSession();

        Rzedy theRzedy = currentSession.get(Rzedy.class, theId);

        return theRzedy;
    }

    @Override
    public void deleteRzedy(int theId) {
        Session currentSession = sessionFactory.getCurrentSession();

        Query theQuery =
                currentSession.createQuery("delete from Rzedy where id_rzedy=:id_rzedy");

        theQuery.setParameter("id_rzedy", theId);
        theQuery.executeUpdate();
    }
}
