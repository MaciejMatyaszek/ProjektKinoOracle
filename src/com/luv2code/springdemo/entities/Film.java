/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.luv2code.springdemo.entities;


import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Maciej
 */
@Entity
@Table(name="Film")

public class Film implements Serializable {
    private static final long serialVersionUID= -300025L;
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name = "Id_filmu")
    private int id_filmu;
    @OneToMany (mappedBy = "film", fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private List<Seans> seanss;
    @Column(name = "tytul")
    private String tytul;
    @Column(name = "rezyser")
    private String rezyser;

    @Column(name="rokprodukcji")
    private int rokprodukcji;
    @Column(name = "gatunek")
    private String gatunek;
    @Column(name="opis")
    private String opis;
    @Column(name="wymagany_wiek")
    private int wymaganyWiek;
    @Column(name="czas_trwania")
    private int czas_trwania;



    public Film()  {

    }


    public Film(List<Seans> seanss, String tytul, String rezyser, int rokprodukcji, String gatunek, String opis, int wymaganyWiek, int czas_trwania) {
        this.seanss = seanss;
        this.tytul = tytul;
        this.rezyser = rezyser;
        this.rokprodukcji = rokprodukcji;
        this.gatunek = gatunek;
        this.opis = opis;
        this.wymaganyWiek = wymaganyWiek;
        this.czas_trwania = czas_trwania;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public int getId_filmu() {
        return id_filmu;
    }

    public void setId_filmu(int id_filmu) {
        this.id_filmu = id_filmu;
    }

    public List<Seans> getSeanss() {
        return seanss;
    }

    public void setSeanss(List<Seans> seanss) {
        this.seanss = seanss;
    }



    public String getTytul() {
        return tytul;
    }

    public void setTytul(String tytul) {
        this.tytul = tytul;
    }

    public String getRezyser() {
        return rezyser;
    }

    public void setRezyser(String rezyser) {
        this.rezyser = rezyser;
    }

    public int getRokprodukcji() {
        return rokprodukcji;
    }

    public void setRokprodukcji(int rokprodukcji) {
        this.rokprodukcji = rokprodukcji;
    }

    public String getGatunek() {
        return gatunek;
    }

    public void setGatunek(String gatunek) {
        this.gatunek = gatunek;
    }

    public String getOpis() {
        return opis;
    }

    public void setOpis(String opis) {
        this.opis = opis;
    }

    public int getWymaganyWiek() {
        return wymaganyWiek;
    }

    public void setWymaganyWiek(int wymaganyWiek) {
        this.wymaganyWiek = wymaganyWiek;
    }

    public int getCzas_trwania() {
        return czas_trwania;
    }

    public void setCzas_trwania(int czas_trwania) {
        this.czas_trwania = czas_trwania;
    }
    public void add(Seans tempSeans) {
        if (seanss == null) {
            seanss = new ArrayList<>();

        }
        seanss.add(tempSeans);

    }

        @Override
        public String toString() {
            return "Film{" +
                    "id_filmu=" + id_filmu +
                    ", seans=" + seanss +
                    ", tytul='" + tytul + '\'' +
                    ", rezyser='" + rezyser + '\'' +
                    ", rokprodukcji=" + rokprodukcji +
                    ", gatunek='" + gatunek + '\'' +
                    ", opis='" + opis + '\'' +
                    ", wymaganyWiek=" + wymaganyWiek +
                    ", czas_trwania=" + czas_trwania +
                    '}';
        }


}
