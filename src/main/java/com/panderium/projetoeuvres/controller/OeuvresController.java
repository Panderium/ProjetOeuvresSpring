package com.panderium.projetoeuvres.controller;

import com.panderium.projetoeuvres.model.OeuvreVente;
import com.panderium.projetoeuvres.model.Proprietaire;
import com.panderium.projetoeuvres.service.IOeuvresService;
import com.panderium.projetoeuvres.service.IProprietaireService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.util.List;

@Controller
public class OeuvresController {

    @Autowired
    private IOeuvresService oeuvresService;

    @Autowired
    private IProprietaireService proprietaireService;

    @RequestMapping(value = "/addOeuvre", method = RequestMethod.GET)
    public ModelAndView displayAddOeuvre() {
        ModelAndView model = new ModelAndView("ajouterOeuvre", "oeuvre", new OeuvreVente());
        model.addObject("proprietaires", proprietaireService.listAll());
        return model;
    }

    @RequestMapping(value = "/insertOeuvre", method = RequestMethod.POST)
    public String addOeuvre(Model model,
                            @Valid @ModelAttribute("oeuvre") OeuvreVente oeuvreVente,
                            BindingResult result) {
        if (result.hasErrors()) {
            return "erreur";
        }
        model.addAttribute("titreOeuvrevente", oeuvreVente.getTitreOeuvrevente());
        model.addAttribute("prixOeuvrevente", oeuvreVente.getPrixOeuvrevente());
        model.addAttribute("proprietaire", oeuvreVente.getProprietaire());
        oeuvreVente.setEtatOeuvrevente("L");
        System.err.println(oeuvreVente.getProprietaire());
        oeuvresService.add(oeuvreVente);
        return "index";
    }

    @RequestMapping(value = "/catalogue", method = RequestMethod.GET)
    public String displayOeuvres(Model model) {
        List<OeuvreVente> oeuvres = oeuvresService.listAll();
        model.addAttribute("oeuvres", oeuvres);
        return "catalogue";
    }
}
