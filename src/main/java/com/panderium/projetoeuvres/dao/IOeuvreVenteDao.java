package com.panderium.projetoeuvres.dao;

import com.panderium.projetoeuvres.model.OeuvreVente;
import org.springframework.data.jpa.repository.JpaRepository;

public interface IOeuvreVenteDao extends JpaRepository<OeuvreVente, Long>{
}
