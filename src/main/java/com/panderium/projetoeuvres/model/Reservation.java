package com.panderium.projetoeuvres.model;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Data
@Entity
public class Reservation implements Serializable {

    @Id
    @ManyToOne
    @JoinColumn(name = "id_oeuvrevente")
    private OeuvreVente oeuvrevente;

    @Id
    @ManyToOne
    @JoinColumn(name = "id_adherent")
    private Adherent adherent;

    @Column(name = "date_reservation")
    private Date date;

    @Column(name = "statut")
    private String status;


}
