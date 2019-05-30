/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.luv2code.springdemo.entities;


import javax.persistence.*;
import java.io.Serializable;

/**
 *
 * @author Maciej
 */
@Entity
@Table(name = "Sala")
public class Sala implements Serializable {
    private static final long serialVersionUID = -300025L;

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name = "id_sali")
    private int id_sali;
    @Column(name = "nazwa")
    private String nazwa;
    @Column(name = "miejsca")
    private int miejsca;



    public Sala() {

    }

    public Sala(String nazwa) {
        this.nazwa = nazwa;
        this.miejsca = 100;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public int getId_sali() {
        return id_sali;
    }

    public void setId_sali(int id_sali) {
        this.id_sali = id_sali;
    }

    public String getNazwa() {
        return nazwa;
    }

    public void setNazwa(String nazwa) {
        this.nazwa = nazwa;
    }

    public int getMiejsca() {
        return miejsca;
    }

    public void setMiejsca(int miejsca) {
        this.miejsca = miejsca;
    }

    @Override
    public String toString() {
        return "Sala{" +
                "id_sali=" + id_sali +
                ", nazwa='" + nazwa + '\'' +
                ", miejsca=" + miejsca +
                '}';
    }
}