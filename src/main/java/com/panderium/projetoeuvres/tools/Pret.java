package com.panderium.projetoeuvres.tools;

import com.panderium.projetoeuvres.model.Adherent;
import com.panderium.projetoeuvres.model.OeuvrePret;

import java.util.Date;


public class Pret {

    private static final long serialVersionUID = 1L;

    private Date date;
    private int duree;
    private OeuvrePret oeuvrepret;
    private Adherent adherent;


    public Pret( Date date, int duree, OeuvrePret oeuvrepret, Adherent adherent) {
        super();
        this.date = date;
        this.duree = duree;
        this.oeuvrepret = oeuvrepret;
        this.adherent = adherent;
    }

    public Pret() {
    }


    public Date getDate() {
        return this.date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getDuree() {
        return this.duree;
    }

    public void setDuree(int duree) {
        this.duree = duree;
    }

    public OeuvrePret getOeuvrepret() {
        return this.oeuvrepret;
    }

    public void setOeuvrepret(OeuvrePret oeuvrepret) {
        this.oeuvrepret = oeuvrepret;
    }

    public Adherent getAdherent() {
        return this.adherent;
    }

    public void setAdherent(Adherent adherent) {
        this.adherent = adherent;
    }
}
