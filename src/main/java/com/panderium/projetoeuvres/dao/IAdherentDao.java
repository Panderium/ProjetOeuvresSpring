package com.panderium.projetoeuvres.dao;

import com.panderium.projetoeuvres.model.Adherent;
import org.springframework.data.jpa.repository.JpaRepository;

public interface IAdherentDao extends JpaRepository<Adherent, Long> {
}
