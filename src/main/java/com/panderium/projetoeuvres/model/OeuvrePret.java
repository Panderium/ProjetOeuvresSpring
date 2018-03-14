package com.panderium.projetoeuvres.model;

import lombok.Data;

import javax.persistence.*;

@Data
@Entity
@Table(name = "oeuvrepret")
public class OeuvrePret {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id_oeuvrepret")
    private int idOeuvrePret;

    @Column(name = "titre_oeuvrepret")
    private String titreOeuvrePret;

    @OneToOne
    @JoinColumn(name = "id_proprietaire")
    private Proprietaire proprietaire;

}
