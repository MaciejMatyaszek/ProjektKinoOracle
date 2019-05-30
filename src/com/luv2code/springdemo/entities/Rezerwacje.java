/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.luv2code.springdemo.entities;

/**
 *
 * @author Maciej
 */

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Maciej
 */
@Entity
@Table(name = "Rezerwacje")
public class Rezerwacje implements Serializable {
    private static final long serialVersionUID= -300025L;

    @Id
    @Column(name = "id_rezerwacje")
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private int id_rezerwacje;
    @ManyToOne
    @JoinColumn(name = "id_dane_osobowe")
    private Dane_osobowe dane_osobowe;
    @Column(name = "liczbamiejsc")
    private int liczbamiejsc;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name="id_seansu")
    private Seans seans;



    @ManyToMany(fetch= FetchType.EAGER )
    @JoinTable(
            name="miejsca_rezerwacje",
            joinColumns=@JoinColumn(name="id_rezerwacje"),
            inverseJoinColumns=@JoinColumn(name="id_miejsca")
    )
    private List<Miejsca> miejscas;

      public Rezerwacje(){
    }

    public Rezerwacje(Dane_osobowe dane_osobowe, int liczbamiejsc, Seans seans, List<Miejsca> miejscas) {
        this.dane_osobowe = dane_osobowe;
        this.liczbamiejsc = liczbamiejsc;
        this.seans = seans;
        this.miejscas = miejscas;
    }

    public void addMiejsca(Miejsca themiejsca) {

        if (miejscas == null) {
            miejscas = new ArrayList<>();
        }
        miejscas.add(themiejsca);
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public int getId_rezerwacje() {
        return id_rezerwacje;
    }

    public void setId_rezerwacje(int id_rezerwacje) {
        this.id_rezerwacje = id_rezerwacje;
    }

    public Dane_osobowe getDane_osobowe() {
        return dane_osobowe;
    }

    public void setDane_osobowe(Dane_osobowe dane_osobowe) {
        this.dane_osobowe = dane_osobowe;
    }

    public int getLiczbamiejsc() {
        return liczbamiejsc;
    }

    public void setLiczbamiejsc(int liczbamiejsc) {
        this.liczbamiejsc = liczbamiejsc;
    }

    public Seans getSeans() {
        return seans;
    }

    public void setSeans(Seans seans) {
        this.seans = seans;
    }

    public List<Miejsca> getMiejscas() {
        return miejscas;
    }

    public void setMiejscas(List<Miejsca> miejscas) {
        this.miejscas = miejscas;
    }


    @Override
    public String toString() {
        return "Rezerwacje{" +
                "id_rezerwacje=" + id_rezerwacje +
                ", dane_osobowe=" + dane_osobowe +
                ", liczbamiejsc=" + liczbamiejsc +
                ", seans=" + seans +
                ", miejscas=" + miejscas +
                '}';
    }
}

