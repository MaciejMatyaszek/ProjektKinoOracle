package com.luv2code.springdemo.entities;


import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name="Miejsca")
public class Miejsca implements Serializable {
    private static final long serialVersionUID= -300025L;

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name="id_miejsca")
    private int id_miejsca;
    @Column(name="status")
    private int status;
    @ManyToOne
    @JoinColumn(name="id_sali")
    private Sala sala;
    @ManyToOne
    @JoinColumn(name="id_seansu")
    private Seans seans;
    @OneToOne
    @JoinColumn(name="rzad_fotel_id")
    private Rzad_fotel rzad_fotel;
    @ManyToMany(fetch= FetchType.EAGER)
    @JoinTable(
            name="miejsca_rezerwacje",
            joinColumns=@JoinColumn(name="id_miejsca"),
            inverseJoinColumns=@JoinColumn(name="id_rezerwacje")
    )
    private List<Rezerwacje> rezerwacjes;

    public Miejsca(){

    }

    public Miejsca(Sala sala, Seans seans, Rzad_fotel rzad_fotel, List<Rezerwacje> rezerwacjes) {
        this.sala = sala;
        this.seans = seans;
        this.rzad_fotel = rzad_fotel;
        this.rezerwacjes = rezerwacjes;
    }

    public Seans getSeans() {
        return seans;
    }

    public void setSeans(Seans seans) {
        this.seans = seans;
    }

    public Miejsca(Sala sala, Rzad_fotel rzad_fotel) {
        this.sala = sala;
        this.rzad_fotel = rzad_fotel;
        
    }

    public Miejsca(Sala sala, Rzad_fotel rzad_fotel, List<Rezerwacje> rezerwacjes) {
        this.sala = sala;
        this.rzad_fotel = rzad_fotel;
        this.rezerwacjes = rezerwacjes;
    }
    public void addRezerw(Rezerwacje themiejsca) {

        if (rezerwacjes == null) {
            rezerwacjes = new ArrayList<>();
        }
        rezerwacjes.add(themiejsca);
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public List<Rezerwacje> getRezerwacjes() {
        return rezerwacjes;
    }

    public void setRezerwacjes(List<Rezerwacje> rezerwacjes) {
        this.rezerwacjes = rezerwacjes;
    }

    public int getId_miejsca() {
        return id_miejsca;
    }

    public void setId_miejsca(int id_miejsca) {
        this.id_miejsca = id_miejsca;
    }

    public Sala getSala() {
        return sala;
    }

    public void setSala(Sala sala) {
        this.sala = sala;
    }

    public Rzad_fotel getRzad_fotel() {
        return rzad_fotel;
    }

    public void setRzad_fotel(Rzad_fotel rzad_fotel) {
        this.rzad_fotel = rzad_fotel;
    }

    public void addRezerwacje(Rezerwacje therezerwacje) {

        if (rezerwacjes == null) {
            rezerwacjes = new ArrayList<>();
        }
        rezerwacjes.add(therezerwacje);
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Miejsca{" +
                "id_miejsca=" + id_miejsca +
                ", status=" + status +
                ", sala=" + sala +
                ", seans=" + seans +
                ", rzad_fotel=" + rzad_fotel +
                ", rezerwacjes=" + rezerwacjes +
                '}';
    }
}
