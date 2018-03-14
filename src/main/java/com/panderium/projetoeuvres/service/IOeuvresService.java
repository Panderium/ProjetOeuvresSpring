package com.panderium.projetoeuvres.service;

import com.panderium.projetoeuvres.model.OeuvreVente;

import java.util.List;

public interface IOeuvresService {

    boolean add(OeuvreVente oeuvreVente);

    List<OeuvreVente> listAll();
}
