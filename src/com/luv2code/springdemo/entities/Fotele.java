package com.luv2code.springdemo.entities;


import javax.persistence.*;

@Entity
@Table(name= "Fotele")
public class Fotele {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name="id_fotela")
    private int rzad_id;
    @Column(name="numer")
    private int numer;

    public Fotele(){

    }

    public Fotele(int numer) {
        this.numer = numer;
    }

    public int getNumer() {
        return numer;
    }

    public void setNumer(int numer) {
        this.numer = numer;
    }

    public int getRzad_id() {
        return rzad_id;
    }

    public void setRzad_id(int rzad_id) {
        this.rzad_id = rzad_id;
    }

    @Override
    public String toString() {
        return "Fotele{" +
                "rzad_id=" + rzad_id +
                ", numer=" + numer +
                '}';
    }
}
