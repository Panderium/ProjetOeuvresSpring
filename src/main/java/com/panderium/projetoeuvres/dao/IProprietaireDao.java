package com.panderium.projetoeuvres.dao;

import com.panderium.projetoeuvres.model.Proprietaire;
import org.springframework.data.jpa.repository.JpaRepository;

public interface IProprietaireDao extends JpaRepository<Proprietaire, Long> {
}
