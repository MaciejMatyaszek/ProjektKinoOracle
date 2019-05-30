package com.luv2code.springdemo.entities;


import javax.persistence.*;

@Entity
@Table(name = "Bilety")
public class Bilety {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "bilet_id")
    private int bilet_id;


    @ManyToOne
    @JoinColumn(name = "id_rezerwacji")
    private Rezerwacje rezerwacje;

    @Column(name = "typ")
    private String typ;

    @Column(name = "cena")
    private float cena;

    public Bilety() {

    }

    public Bilety(Rezerwacje rezerwacje, String typ, float cena) {

        this.rezerwacje = rezerwacje;
        this.typ = typ;
        this.cena = cena;
    }


    public int getBilet_id() {
        return bilet_id;
    }

    public void setBilet_id(int bilet_id) {
        this.bilet_id = bilet_id;
    }


    public Rezerwacje getRezerwacje() {
        return rezerwacje;
    }

    public void setRezerwacje(Rezerwacje rezerwacje) {
        this.rezerwacje = rezerwacje;
    }

    public String getTyp() {
        return typ;
    }

    public void setTyp(String typ) {
        this.typ = typ;
        if (typ.equals("Normalny")) {
            this.cena = 24;
        } else if (typ.equals("Ulgowy")) {
            this.cena = 20;
        } else {
            this.cena = 20;
        }
    }

    public float getCena() {
        return cena;
    }

    public void setCena(String typo) {
        if (typo.equals("Normalny")) {
            this.cena = 24;
        } else if (typo.equals("Ulgowy")) {
            this.cena = 20;
        } else {
            this.cena = 20;
        }

    }

    @Override
    public String toString() {
        return "Bilety{" +
                "bilet_id=" + bilet_id +
                ", rezerwacje=" + rezerwacje +
                ", typ='" + typ + '\'' +
                ", cena=" + cena +
                '}';
    }
}
