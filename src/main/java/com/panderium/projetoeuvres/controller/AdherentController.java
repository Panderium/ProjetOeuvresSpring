package com.panderium.projetoeuvres.controller;

import com.panderium.projetoeuvres.model.Adherent;
import com.panderium.projetoeuvres.service.IAdherentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

import javax.validation.Valid;

@Controller
public class AdherentController {

    @Autowired
    private IAdherentService adherentService;

    @RequestMapping(value = "/addAdherent", method = RequestMethod.GET)
    public ModelAndView displayAddAdherent() {
        return new ModelAndView("ajouterAdherent", "adherent", new Adherent());
    }

    @RequestMapping(value = "/insertAdherent", method = RequestMethod.POST)
    public String addAdherent(Model model,
    		@Valid @ModelAttribute("adherent")Adherent adherent,
    		BindingResult result) {
    	if (result.hasErrors()) {
    		return "erreur";
    	}
        model.addAttribute("nomAdherent", adherent.getNomAdherent());
        model.addAttribute("prenomAdherent", adherent.getPrenomAdherent());
        model.addAttribute("villeAdherent", adherent.getVilleAdherent());
        System.err.println(adherent.getVilleAdherent());
        adherentService.add(adherent);
        return "index";
    }

    @RequestMapping(value = "/listAdherent")
    public String displayAdherents(Model model) {
        List<Adherent> adherents = adherentService.listAll();
        model.addAttribute("adherents", adherents);
        return "listerAdherent";
    }

}
