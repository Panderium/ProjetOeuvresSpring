package com.panderium.projetoeuvres.controller;

import com.panderium.projetoeuvres.model.OeuvreVente;
import com.panderium.projetoeuvres.model.Reservation;
import com.panderium.projetoeuvres.service.IAdherentService;
import com.panderium.projetoeuvres.service.IOeuvresService;
import com.panderium.projetoeuvres.service.IReservationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;

@Controller
public class BookController {

    @Autowired
    private IOeuvresService oeuvresService;

    @Autowired
    private IReservationService reservationService;

    @Autowired
    private IAdherentService adherentService;

    @RequestMapping(value = "/bookOeuvre", method = RequestMethod.GET)
    public ModelAndView displayBookOeuvre(@RequestParam("id") int id) {
        OeuvreVente oeuvreVente = oeuvresService.findByIdOeuvrevente(id);
        Reservation reservation = new Reservation();
        ModelAndView model = new ModelAndView("bookOeuvre", "reservation", reservation);
        model.addObject("adherents", adherentService.listAll());
        model.addObject("oeuvre", oeuvreVente);
        return model;
    }

    @RequestMapping(value = "/doBooking")
    public String doBooking(Model model,
                            @RequestParam("id") int idOeuvre,
                            @Valid @ModelAttribute("reservation") Reservation reservation,
                            BindingResult result) {
        if (result.hasErrors()) {
            System.err.println(result);
            return "erreur";
        }
        System.out.println(reservation.getIdAdherent());
        reservation.setIdOeuvrevente(idOeuvre);
        reservation.setStatus("non confirmee");
        System.out.println(reservation);
        reservationService.add(reservation);
        return "catalogue";
    }
}
