package com.panderium.projetoeuvres.dao;

import com.panderium.projetoeuvres.model.Reservation;
import org.springframework.data.jpa.repository.JpaRepository;

public interface IReservationDao extends JpaRepository<Reservation, Long> {


}
