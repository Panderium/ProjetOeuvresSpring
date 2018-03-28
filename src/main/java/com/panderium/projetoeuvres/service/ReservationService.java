package com.panderium.projetoeuvres.service;

import com.panderium.projetoeuvres.dao.IReservationDao;
import com.panderium.projetoeuvres.model.Reservation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ReservationService implements IReservationService {

    @Autowired
    private IReservationDao reservationDao;

   @Override
    public boolean add(Reservation reservation) {
        return reservationDao.save(reservation) != null;
    }

    @Override
    public List<Reservation> listAll() {
        return reservationDao.findAll();
    }
}
