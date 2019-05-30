package com.luv2code.springdemo.entities;


import javax.persistence.*;

@Entity
@Table(name="Rzedy")
public class Rzedy {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name="rzad_id")
    private int rzad_id;

    @Column(name="numer")
    private int numer;

    public int getRzad_id() {
        return rzad_id;
    }

    public void setRzad_id(int rzad_id) {
        this.rzad_id = rzad_id;
    }

    public int getNumer() {
        return numer;
    }

    public void setNumer(int numer) {
        this.numer = numer;
    }

    public Rzedy(int numer) {
        this.numer = numer;
    }

    public Rzedy(){

    }

    @Override
    public String toString() {
        return "Rzedy{" +
                "rzad_id=" + rzad_id +
                ", numer=" + numer +
                '}';
    }
}


