package com.panderium.projetoeuvres.model;

import lombok.Data;

import javax.persistence.*;

@Data
@Entity
public class Proprietaire {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id_proprietaire")
    private int idProprietaire;

    @Column(name = "nom_proprietaire")
    private String nomProprietaire;

    @Column(name = "prenom_proprietaire")
    private String prenomProprietaire;

}
