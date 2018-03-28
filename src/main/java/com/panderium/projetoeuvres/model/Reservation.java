package com.panderium.projetoeuvres.model;

import com.panderium.projetoeuvres.tools.ReservationId;
import lombok.Data;

import javax.persistence.*;

@Data
@Entity
@IdClass(ReservationId.class)
public class Reservation {

    @Id
    private int idOeuvrevente;

    @Id
    private int idAdherent;

    @Column(name = "date_reservation")
    private String date;

    @Column(name = "statut")
    private String status;


}
