package com.panderium.projetoeuvres.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ErreurController {

    @RequestMapping(value = "/error", method = RequestMethod.GET)
    public String error() {
        return "erreur";
    }
}
