package com.panderium.projetoeuvres.dao;

import com.panderium.projetoeuvres.model.OeuvrePret;
import org.springframework.data.jpa.repository.JpaRepository;

public interface IOeuvrePretDao extends JpaRepository<OeuvrePret, Long>{
}
