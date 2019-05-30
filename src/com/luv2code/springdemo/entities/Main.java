package com.luv2code.springdemo.entities;



import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;


public class Main {
    public static void main(String[] args) {


        Configuration configuration = new Configuration().configure("hibernate.cfg.xml");
        configuration.addAnnotatedClass(Seans.class);
        configuration.addAnnotatedClass(Film.class);
        configuration.addAnnotatedClass(Sala.class);
        configuration.addAnnotatedClass(Rezerwacje.class);
        configuration.addAnnotatedClass(Miejsca.class);
        configuration.addAnnotatedClass(Rzad_fotel.class);
        configuration.addAnnotatedClass(Rzedy.class);
        configuration.addAnnotatedClass(Fotele.class);
        configuration.addAnnotatedClass(Dane_osobowe.class);
        configuration.addAnnotatedClass(Bilety.class);

        /*
        Seans seans = new Seans(sala, "12-12-2012");
        Film film = new Film(seans, "Aquaman", "Baran Nat", 2018, "Akcji", "Woda woda woda i 3 zeby", 14, 140);
        Rzedy rzedy = new Rzedy(1);
        Fotele fotel = new Fotele(2);
        Rzad_fotel rzad_fotel = new Rzad_fotel(rzedy, fotel);

*/









        SessionFactory factory = configuration.buildSessionFactory();
        Session session = factory.openSession();

        Transaction transaction = session.beginTransaction();
        /*
 Dane_osobowe dane_osobowe = new Dane_osobowe("Tom", "Asew", "12-22-1994", "asdsad@o2.pl", "213213 ");
        Sala sala=session.get(Sala.class, 22);
        Seans seans = new Seans( "1999-11-11 12:32", sala);
        Film film = new Film(seans, "Aquaman", "Baran Nat", 2018, "Akcji", "Woda woda woda i 3 zeby", 14, 140);
        seans.add(film);
        //Sala test = session.get(Sala.class, 5);
        Rzedy rzedy = new Rzedy(1);
        Fotele fotele = new Fotele(1);
        Rezerwacje rezerwacje = new Rezerwacje(2, "Maciej", "mat", seans);
        Rzad_fotel test1 = new Rzad_fotel(rzedy, fotele);
        Miejsca miejsca = new Miejsca(sala, test1);
        rezerwacje.addMiejsca(miejsca);
        rezerwacje.setDane_osobowe(dane_osobowe);
        session.save(seans);
        session.save(dane_osobowe);
        session.save(rezerwacje);
        session.save(rzedy);
        session.save(fotele);
        session.save(miejsca);
        session.save(test1);

        //seans.add(film);
         //miejsca.addRezerwacje(rezerwacje);
        //session.save(sala);

        //session.save(film);
        //session.save(seans);
        //session.save(rzedy);
        //session.save(fotel);
        //session.save(rzad_fotel);
        //session.save(miejsca);
        //rezerwacje.addMiejsca(miejsca);
        //session.save(rezerwacje);
        session.save(sala);

        //session.save(miejsca);
        */
        transaction.commit();


        //aktualizacja tej listy

        session.close();

        factory.close();


    }
}
