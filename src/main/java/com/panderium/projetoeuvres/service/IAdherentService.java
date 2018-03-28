package com.panderium.projetoeuvres.service;

import com.panderium.projetoeuvres.model.Adherent;

import java.util.List;

public interface IAdherentService {

    boolean add(Adherent adherent);

    List<Adherent> listAll();

    Adherent findByIdAdherent(int id);
}
