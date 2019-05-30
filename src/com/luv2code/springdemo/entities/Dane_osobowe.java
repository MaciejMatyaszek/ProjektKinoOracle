package com.luv2code.springdemo.entities;


import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;


@Entity
@Table(name="dane_osobowe")
public class Dane_osobowe {


    @Id
    @Column(name = "id_dane_osobowe")
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private int id_dane_osobowe;

    @Column(name="imie")
    private String imie;

    @Column(name = "nazwisko")
    private String nazwisko;
    @Column(name = "data_urodzenia")


    private String data_urodzenia;

    private String email;
    @Column(name = "numer")
    private String numer;

    public Dane_osobowe(){

    }

    public Dane_osobowe(String imie, String nazwisko, String data_urodzenia, String email, String numer) {
        this.imie = imie;
        this.nazwisko = nazwisko;
        this.data_urodzenia = data_urodzenia;
        this.email = email;
        this.numer = numer;
    }

    public int getId_dane_osobowe() {
        return id_dane_osobowe;
    }

    public void setId_dane_osobowe(int id_dane_osobowe) {
        this.id_dane_osobowe = id_dane_osobowe;
    }

    public String getImie() {
        return imie;
    }

    public void setImie(String imie) {
        this.imie = imie;
    }

    public String getNazwisko() {
        return nazwisko;
    }

    public void setNazwisko(String nazwisko) {
        this.nazwisko = nazwisko;
    }

    public String getData_urodzenia() {
        return data_urodzenia;
    }

    public void setData_urodzenia(String data_urodzenia) {
        this.data_urodzenia = data_urodzenia;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getNumer() {
        return numer;
    }

    public void setNumer(String numer) {
        this.numer = numer;
    }

    @Override
    public String toString() {
        return "Dane_osobowe{" +
                "id_dane_osobowe=" + id_dane_osobowe +
                ", imie='" + imie + '\'' +
                ", nazwisko='" + nazwisko + '\'' +
                ", data_urodzenia='" + data_urodzenia + '\'' +
                ", email='" + email + '\'' +
                ", numer='" + numer + '\'' +
                '}';
    }
}
