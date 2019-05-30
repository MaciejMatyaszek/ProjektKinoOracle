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
 * @author Student
 */
@Entity
@Table(name="Seans")
public class Seans implements Serializable {
    private static final long serialVersionUID= -300025L;





    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name = "id_seansu")
    private int id_seansu;
    @Column(name="data")
    private String data;
    @OneToOne(cascade=CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinColumn(name="id_sali")
    private Sala sala;
    @ManyToOne
    @JoinColumn(name="id_filmu")
    private Film film;
    @Column(name="wolnemiejsca")
    private int wolnemiejsca;
    @Column
    private String godzina;

   public Seans(){

   }


    public Seans(String data, Sala sala, Film film, int wolnemiejsca, String godzina) {
        this.data = data;
        this.sala = sala;
        this.film = film;
        this.wolnemiejsca = wolnemiejsca;
        this.godzina = godzina;
    }

    public int getWolnemiejsca() {
        return wolnemiejsca;
    }

    public void setWolnemiejsca(int wolnemiejsca) {
        this.wolnemiejsca = wolnemiejsca;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public int getId_seansu() {
        return id_seansu;
    }

    public void setId_seansu(int id_seansu) {
        this.id_seansu = id_seansu;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    public Sala getSala() {
        return sala;
    }

    public void setSala(Sala sala) {
        this.sala = sala;
    }

    public Seans(String data, Sala sala) {
        this.data = data;
        this.sala = sala;
    }

    public Film getFilm() {
        return film;
    }

    public void setFilm(Film film) {
        this.film = film;
    }

    public String getGodzina() {
        return godzina;
    }

    public void setGodzina(String godzina) {
        this.godzina = godzina;
    }

    @Override
    public String toString() {
        return "Seans{" +
                "id_seansu=" + id_seansu +
                ", data='" + data + '\'' +
                ", sala=" + sala +
                ", film=" + film +
                ", wolnemiejsca=" + wolnemiejsca +
                ", godzina='" + godzina + '\'' +
                '}';
    }
}
