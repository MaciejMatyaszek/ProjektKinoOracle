package com.luv2code.springdemo.entities;


import javax.persistence.*;

@Entity
@Table(name = "Rzad_fotel")
public class Rzad_fotel {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name="rzad_fotel_id")
    private int rzad_fotel_id;
    @ManyToOne
    @JoinColumn(name = "rzad_id")
    private Rzedy rzedy;
    @ManyToOne
    @JoinColumn(name = "id_fotela")
    private Fotele fotele;
    @ManyToOne
    @JoinColumn(name = "id_sali")
    private Sala sala;


    public Rzad_fotel(){

    }



    public Rzad_fotel(Rzedy rzedy, Fotele fotele, Sala sala) {
        this.rzedy = rzedy;
        this.fotele = fotele;
        this.sala = sala;
    }


    public int getRzad_fotel_id() {
        return rzad_fotel_id;
    }

    public void setRzad_fotel_id(int rzad_fotel_id) {
        this.rzad_fotel_id = rzad_fotel_id;
    }

    public Rzedy getRzedy() {
        return rzedy;
    }

    public void setRzedy(Rzedy rzedy) {
        this.rzedy = rzedy;
    }

    public Fotele getFotele() {
        return fotele;
    }

    public void setFotele(Fotele fotele) {
        this.fotele = fotele;
    }

    public Sala getSala() {
        return sala;
    }

    public void setSala(Sala sala) {
        this.sala = sala;
    }

    @Override
    public String toString() {
        return "Rzad_fotel{" +
                "rzad_fotel_id=" + rzad_fotel_id +
                ", rzedy=" + rzedy +
                ", fotele=" + fotele +
                ", sala=" + sala +
                '}';
    }
}
