package com.firstexample.controller;


import com.firstexample.model.Film;
//import com.firstexample.service.FilmService;
import com.firstexample.services.FilmService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/Films")
public class Films{

    @Autowired
    private FilmService FILMdao;

    @GetMapping("/create")
    public String showAddFilmForm() {
        return "addFilm"; // This returns the name of the JSP file: addFilm.jsp
    }

    @PostMapping("/add")
    public String addFilm(
            @RequestParam("Title") String titre,
            @RequestParam("Description") String description,
            @RequestParam("DateDeSortie") String dateSortie,
            @RequestParam("Duree") int duree,
            @RequestParam("Genre") String genre,
            @RequestParam("Realisateur") String realisateur,
            @RequestParam("Acteurs") String acteurs,
            @RequestParam("Note") double note,
            Model model) {

        Film film = new Film();

        film.setTitre("TESTdfg HIBERNATE");
        film.setDescription("A test film for Hibernate.");
        film.setDateDeSortie("20fgg-01-01");
        film.setDuree(120);
        film.setGenre("Drama");
        film.setRealisateur("dsf sdg");
        film.setActeurs("Actor1, Actor2, Actor3");
        film.setNote(8.5);

        FILMdao.ajouterMovie(film);

        model.addAttribute("message", "Film ajouté avec succès");
        return "redirect:/Films/create";
    }
}