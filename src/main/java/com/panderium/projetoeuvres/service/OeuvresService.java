package com.panderium.projetoeuvres.service;

import com.panderium.projetoeuvres.dao.IOeuvreVenteDao;
import com.panderium.projetoeuvres.model.OeuvreVente;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OeuvresService implements IOeuvresService{

    @Autowired
    private IOeuvreVenteDao oeuvreVenteDao;

    @Override
    public boolean add(OeuvreVente oeuvreVente) {
        return oeuvreVenteDao.save(oeuvreVente) != null;
    }

    @Override
    public List<OeuvreVente> listAll() {
        return oeuvreVenteDao.findAll();
    }

    @Override
    public OeuvreVente findByIdOeuvrevente(int id) {
        return oeuvreVenteDao.findByIdOeuvrevente(id);
    }

    @Override
    public OeuvreVente findByTitreOeuvrevente(String titreOeuvreVente) {
        return oeuvreVenteDao.findByTitreOeuvrevente(titreOeuvreVente);
    }
}
