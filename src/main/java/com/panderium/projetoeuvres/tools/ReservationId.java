package com.panderium.projetoeuvres.tools;

import lombok.Data;

import java.io.Serializable;

@Data
public class ReservationId implements Serializable {

    private int idOeuvrevente;
    private int idAdherent;

}
