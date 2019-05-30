package com.luv2code.springdemo.dao;

import com.luv2code.springdemo.entities.Film;
import com.luv2code.springdemo.entities.Sala;
import com.luv2code.springdemo.entities.Seans;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import javax.transaction.Transactional;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;


@Repository
public class SeansDaoImpl implements SeansDao {


    @Autowired
    private SessionFactory sessionFactory;


    @Override

    public List<Seans> getSeans() {

        //Pobranie sessji
        Session currentSession = sessionFactory.getCurrentSession();

        //Zapytanie
        Query<Seans> theQuery =
                currentSession.createQuery("from Seans order by id_seansu", Seans.class);

        //wywolanie zapytania i lista
        List<Seans> seans = theQuery.getResultList();

        //zwrocenie listy


        return seans;
    }

    @Override
    public void saveSeans(Seans theSeans) {
        Session currentSession = sessionFactory.getCurrentSession();

        currentSession.saveOrUpdate(theSeans);
    }
    @Override
    public void updateSeans(Seans theSeans) {
        Session currentSession = sessionFactory.getCurrentSession();

        currentSession.update(theSeans);
    }

    @Override
    public Seans getSeansById(int theId) {
        Session currentSession = sessionFactory.getCurrentSession();

        Seans theSeans = currentSession.get(Seans.class, theId);

        return theSeans;
    }

    @Override
    public List <Seans> getSeansByData() {
        Session currentSession = sessionFactory.getCurrentSession();
        GregorianCalendar dzis = new GregorianCalendar();
        int day = dzis.get(Calendar.DAY_OF_MONTH);
        int month = dzis.get(Calendar.MONTH)+1;
        String miesiac=null;
        if(month<10){
            miesiac="0"+Integer.toString(month);
        }
        int year = dzis.get(Calendar.YEAR);
        String s = Integer.toString(day)+"-"+miesiac+"-"+Integer.toString(year);
        Query theQuery =
                currentSession.createQuery("from Seans where data=:data", Seans.class);
        theQuery.setParameter("data", s);
        List<Seans> seans=theQuery.getResultList();
        return seans;
    }

    @Override
    public void deleteSeans(int theId) {

        Session currentSession = sessionFactory.getCurrentSession();

        Query theQuery =
                currentSession.createQuery("delete from Seans where id_seansu=:id_seansu");

        theQuery.setParameter("id_seansu", theId);
        theQuery.executeUpdate();
    }

    @Override
    public List<Seans> test() {
        List <Seans> list= new ArrayList<Seans>();
        String s="26-05-2019";
        String tyt="Avangers";
        Session currentSession = sessionFactory.getCurrentSession();
        sessionFactory.getCurrentSession().doWork((Connection connection)-> {
                CallableStatement statement= connection.prepareCall(" {call GETSEANSFORFILMS(?, ?, ?)");
                statement.registerOutParameter(1, oracle.jdbc.OracleTypes.CURSOR);
                statement.setString(2, s);
                statement.setString(3,tyt);

                statement.execute();
                ResultSet rs = (ResultSet)statement.getObject(1);
            while(rs.next()){
                Seans seans=new Seans();
                int id_filmu= rs.getInt("id_seansu");
                String godzina= rs.getString("godzina");
                seans.setId_seansu(id_filmu);
                seans.setGodzina(godzina);
                list.add(seans);

            }






        });






        return list;
    }

    @Override
    public List<Seans> SeansDAY(int a) {
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
        System.out.println(s);
        int godzinaa=dzis.get(Calendar.HOUR_OF_DAY);
        int minut=dzis.get(Calendar.MINUTE);
        String op=Integer.toString(godzinaa)+":"+Integer.toString(minut);
        List <Seans> list= new ArrayList<Seans>();


        Session currentSession = sessionFactory.getCurrentSession();
        sessionFactory.getCurrentSession().doWork((Connection connection)-> {
            CallableStatement statement= connection.prepareCall(" {call FILMDAYTEST(?, ?)");
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

                Seans seans = new Seans();
                int id_seansu=rs.getInt("id_seansu");
                int idsfilmu=rs.getInt("id_filmu");
                String data=rs.getString("data");
                String godzina=rs.getString("godzina");
                int id_sali=rs.getInt("id_sali");
                int wolnemiejsca=rs.getInt("wolnemiejsca");

                Sala sala =new Sala();

                String nazwa=rs.getString("nazwa");
                int miejsca=rs.getInt("miejsca");

                sala.setId_sali(id_sali);
                sala.setMiejsca(miejsca);
                sala.setNazwa(nazwa);

                seans.setId_seansu(id_seansu);
                seans.setFilm(film);
                seans.setGodzina(godzina);
                seans.setData(data);
                seans.setSala(sala);
                seans.setWolnemiejsca(wolnemiejsca);





                list.add(seans);

            }






        });


        return list;

    }


    @Override
    public List<Seans> SeansDAY2(int a) {
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
        System.out.println(s);
        String hour = null;

        int godzinaa=dzis.get(Calendar.HOUR_OF_DAY);
        if(godzinaa<10){
            hour="0"+godzinaa;
        }
        else{
            hour=Integer.toString(godzinaa);
        }
        int minut=dzis.get(Calendar.MINUTE);
        String op=hour+":"+Integer.toString(minut);
        List <Seans> list= new ArrayList<Seans>();


        Session currentSession = sessionFactory.getCurrentSession();
        sessionFactory.getCurrentSession().doWork((Connection connection)-> {
            CallableStatement statement= connection.prepareCall(" {call FILMDAY2(?, ?, ?)");
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

                Seans seans = new Seans();
                int id_seansu=rs.getInt("id_seansu");
                int idsfilmu=rs.getInt("id_filmu");
                String data=rs.getString("data");
                String godzina=rs.getString("godzina");
                int id_sali=rs.getInt("id_sali");
                int wolnemiejsca=rs.getInt("wolnemiejsca");

                Sala sala =new Sala();

                String nazwa=rs.getString("nazwa");
                int miejsca=rs.getInt("miejsca");

                sala.setId_sali(id_sali);
                sala.setMiejsca(miejsca);
                sala.setNazwa(nazwa);

                seans.setId_seansu(id_seansu);
                seans.setFilm(film);
                seans.setGodzina(godzina);
                seans.setData(data);
                seans.setSala(sala);
                seans.setWolnemiejsca(wolnemiejsca);





                list.add(seans);

            }


            System.out.println("zrobione");

        });


        return list;

    }


}
