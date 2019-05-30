package com.luv2code.springdemo.dao;

import com.luv2code.springdemo.entities.Sala;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class SalaDaoImpl implements SalaDao {


    @Autowired
    private SessionFactory sessionFactory;


    @Override

    public List<Sala> getSala() {

        //Pobranie sessji
        Session currentSession = sessionFactory.getCurrentSession();

        //Zapytanie
        Query<Sala> theQuery =
                currentSession.createQuery("from Sala", Sala.class);

        //wywolanie zapytania i lista
        List<Sala> sala = theQuery.getResultList();

        //zwrocenie listy


        return sala;
    }

    @Override
    public void saveSala(Sala theSala) {
        Session currentSession = sessionFactory.getCurrentSession();

        currentSession.saveOrUpdate(theSala);
    }

    @Override
    public Sala getSalaById(int id) {
        Session currentSession = sessionFactory.getCurrentSession();
        Sala sala=currentSession.get(Sala.class, id);
        return sala;
    }

    @Override
    public void updateSala(Sala theSala) {
        Session currentSession = sessionFactory.getCurrentSession();

        currentSession.update(theSala);
    }

    @Override
    public void deleteSala(int theId) {
        Session currentSession = sessionFactory.getCurrentSession();

        Query theQuery =
                currentSession.createQuery("delete from Sala where id_sali=:id_sali");

        theQuery.setParameter("id_sali", theId);
        theQuery.executeUpdate();
    }

}
