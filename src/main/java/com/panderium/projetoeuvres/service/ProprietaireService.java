package com.panderium.projetoeuvres.service;

import com.panderium.projetoeuvres.dao.IProprietaireDao;
import com.panderium.projetoeuvres.model.Proprietaire;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProprietaireService implements IProprietaireService {

    @Autowired
    private IProprietaireDao proprietaireDao;

    @Override
    public List<Proprietaire> listAll() {
        return proprietaireDao.findAll();
    }
}
