package com.panderium.projetoeuvres.model;

import javax.persistence.*;

import lombok.Data;

@Data
@Entity
public class Adherent {

    @Id
    private int idAdherent;

    private String nomAdherent;

    private String prenomAdherent;

    private String villeAdherent;

}
