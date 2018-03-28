package com.panderium.projetoeuvres.service;

import com.panderium.projetoeuvres.model.Reservation;

import java.util.List;

public interface IReservationService {

    boolean add(Reservation reservation);

    List<Reservation> listAll();
}
