package com.panderium.projetoeuvres.model;

import lombok.Data;

import javax.persistence.*;

@Data
@Entity
@Table(name = "oeuvrevente")
public class OeuvreVente {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id_oeuvrevente")
    private int idOeuvrevente;

    @Column(name = "etat_oeuvrevente")
    private String etatOeuvrevente;

    @Column(name = "prix_oeuvrevente")
    private float prixOeuvrevente;

    @Column(name = "titre_oeuvrevente")
    private String titreOeuvrevente;

    @OneToOne
    @JoinColumn(name = "id_proprietaire")
    private Proprietaire proprietaire;

}
