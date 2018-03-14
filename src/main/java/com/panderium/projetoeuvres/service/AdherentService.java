package com.panderium.projetoeuvres.service;

import com.panderium.projetoeuvres.dao.IAdherentDao;
import com.panderium.projetoeuvres.model.Adherent;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdherentService implements IAdherentService {

    @Autowired
    private IAdherentDao adherentDao;

    @Override
    public boolean add(Adherent adherent) {
        return adherentDao.save(adherent) != null;
    }

    @Override
    public List<Adherent> listAll() {
        return adherentDao.findAll();
    }
}
