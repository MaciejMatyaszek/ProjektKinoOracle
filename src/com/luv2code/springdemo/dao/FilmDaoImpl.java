package com.luv2code.springdemo.dao;

import com.luv2code.springdemo.entities.Film;
import com.luv2code.springdemo.entities.Sala;
import com.luv2code.springdemo.entities.Seans;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;

@Repository
public class FilmDaoImpl implements FilmDao {
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Film> getFilm() {
        //Pobranie sessji
        Session currentSession = sessionFactory.getCurrentSession();

        //Zapytanie
        Query<Film> theQuery =
                currentSession.createQuery("from Film", Film.class);

        //wywolanie zapytania i lista
        List<Film> films = theQuery.getResultList();

        //zwrocenie listy


        return films;
    }
    @Override
    public List<Film> getFilmBySeansID(int id_seansu){
        Session currentSession = sessionFactory.getCurrentSession();
        Query<Film> theQuery =
                currentSession.createQuery("from Film where id_seansu=:id_seanus", Film.class);
        theQuery.setParameter("id_seanus", id_seansu);
        List<Film> films = theQuery.getResultList();
        return films;
    }

    @Override
    public List<Film> getFilmBySeansData() {
        Session currentSession = sessionFactory.getCurrentSession();
        GregorianCalendar dzis = new GregorianCalendar();
        int day = dzis.get(Calendar.DAY_OF_MONTH);
        int month = dzis.get(Calendar.MONTH)+1;
        String miesiac=null;
        if(month<10){
            miesiac="0"+Integer.toString(month);
        }
        int year = dzis.get(Calendar.YEAR);
        String s = "'"+Integer.toString(day)+"-"+miesiac+"-"+Integer.toString(year)+"'";
        String sql="Select film.id_filmu, film.tytul, film.wymagany_wiek, film.rezyser, film.id_seansu, film.gatunek, film.czas_trwania, film.opis  from Film, Seans where Seans.id_seansu=Film.id_seansu and Seans.data='25-05-2019'";


        Query theQuery =

                currentSession.createSQLQuery(sql);

        List<Film> films=theQuery.getResultList();
        return films;
    }

    @Override
    public List<Film> getFilmByName(String tytul) {
        Session currentSession = sessionFactory.getCurrentSession();

        Query theQuery =
                currentSession.createQuery("from Film where tytul=:tytul");

        theQuery.setParameter("tytul", tytul);
        List<Film> films=theQuery.getResultList();

        return films;
    }

    @Override
    public void saveFilm(Film theFilm) {
        Session currentSession = sessionFactory.getCurrentSession();

        currentSession.saveOrUpdate(theFilm);
    }

    @Override
    public void updateFilm(Film theFilm) {
        Session currentSession = sessionFactory.getCurrentSession();

        currentSession.update(theFilm);
    }

    @Override
    public Film getFilmById(int theId) {
        Session currentSession = sessionFactory.getCurrentSession();

        Film theFilm = currentSession.get(Film.class, theId);

        return theFilm;
    }

    @Override
    public void deleteFilm(int theId) {
        Session currentSession = sessionFactory.getCurrentSession();

        Query theQuery =
                currentSession.createQuery("delete from Film where id_filmu=:id_filmu");

        theQuery.setParameter("id_filmu", theId);
        theQuery.executeUpdate();
    }

    @Override
    public List<Film> FilmDay(int a) {

        GregorianCalendar dzis = new GregorianCalendar();
        int day = dzis.get(Calendar.DAY_OF_MONTH)+a;
        int month = dzis.get(Calendar.MONTH)+1;
        if(day>31){
            month++;
            day=day-31;
        }
        String miesiac=null;
        if(month<10){
            miesiac="0"+Integer.toString(month);
        }

        int year = dzis.get(Calendar.YEAR);
        String s = Integer.toString(day)+"-"+miesiac+"-"+Integer.toString(year);
        List <Film> list= new ArrayList<Film>();
        int godzina=dzis.get(Calendar.HOUR_OF_DAY);
        int minut=dzis.get(Calendar.MINUTE);
        String op=Integer.toString(godzina)+":"+Integer.toString(minut);

        Session currentSession = sessionFactory.getCurrentSession();
        sessionFactory.getCurrentSession().doWork((Connection connection)-> {
            CallableStatement statement= connection.prepareCall(" {call FILMDAYPOJTEST(?, ?)");
            statement.registerOutParameter(1, oracle.jdbc.OracleTypes.CURSOR);
            statement.setString(2, s);



            statement.execute();
            ResultSet rs = (ResultSet)statement.getObject(1);
            while(rs.next()){
                Film film=new Film();
                int id_filmu= rs.getInt("id_filmu");
                String tytul= rs.getString("tytul");
                String gatuenk= rs.getString("gatunek");
                String opis= rs.getString("opis");
                String rezyser= rs.getString("rezyser");
                int wymaganywiek= rs.getInt("wymagany_wiek");
                int czas_trwania=rs.getInt("czas_trwania");

                film.setId_filmu(id_filmu);
                film.setTytul(tytul);
                film.setGatunek(gatuenk);
                film.setOpis(opis);
                film.setRezyser(rezyser);
                film.setWymaganyWiek(wymaganywiek);
                film.setCzas_trwania(czas_trwania);





                list.add(film);

            }






        });






        return list;

    }
    @Override
    public List<Film> FilmDay2(int a) {

        GregorianCalendar dzis = new GregorianCalendar();
        int day = dzis.get(Calendar.DAY_OF_MONTH)+a;
        int month = dzis.get(Calendar.MONTH)+1;
        if(day>31){
            month++;
            day=day-31;
        }
        String miesiac=null;
        if(month<10){
            miesiac="0"+Integer.toString(month);
        }

        int year = dzis.get(Calendar.YEAR);
        String s = Integer.toString(day)+"-"+miesiac+"-"+Integer.toString(year);
        List <Film> list= new ArrayList<Film>();
        String hour=null;
        int godzinaa=dzis.get(Calendar.HOUR_OF_DAY);
        if(godzinaa<10){
            hour="0"+godzinaa;
        }
        else{
            hour=Integer.toString(godzinaa);
        }
        int minut=dzis.get(Calendar.MINUTE);
        String op=hour+":"+Integer.toString(minut);
        System.out.println(op);

        Session currentSession = sessionFactory.getCurrentSession();
        sessionFactory.getCurrentSession().doWork((Connection connection)-> {
            CallableStatement statement= connection.prepareCall(" {call FILMDAYPOJ2(?, ?, ?)");
            statement.registerOutParameter(1, oracle.jdbc.OracleTypes.CURSOR);
            statement.setString(2, s);
            statement.setString(3, op);


            statement.execute();
            ResultSet rs = (ResultSet)statement.getObject(1);
            while(rs.next()){
                Film film=new Film();
                int id_filmu= rs.getInt("id_filmu");
                String tytul= rs.getString("tytul");
                String gatuenk= rs.getString("gatunek");
                String opis= rs.getString("opis");
                String rezyser= rs.getString("rezyser");
                int wymaganywiek= rs.getInt("wymagany_wiek");
                int czas_trwania=rs.getInt("czas_trwania");

                film.setId_filmu(id_filmu);
                film.setTytul(tytul);
                film.setGatunek(gatuenk);
                film.setOpis(opis);
                film.setRezyser(rezyser);
                film.setWymaganyWiek(wymaganywiek);
                film.setCzas_trwania(czas_trwania);





                list.add(film);

            }






        });


        System.out.println("zrobione film");
        return list;

    }
}
