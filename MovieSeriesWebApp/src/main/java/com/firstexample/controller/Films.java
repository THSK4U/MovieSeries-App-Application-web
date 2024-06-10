package com.firstexample.controller;

import com.firstexample.model.Film;
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
public class Films {

    @Autowired
    private FilmService filmService;

    @GetMapping("/create")
    public String showAddFilmForm() {

        return "AddFilm"; // This returns the name of the JSP file: AddFilm.jsp
    }

    @PostMapping("/add")
    public String addFilm(
            @RequestParam("titre") String titre,
            @RequestParam("description") String description,
            @RequestParam("datedesortie") String dateSortie,
            @RequestParam("duree") int duree,
            @RequestParam("genre") String genre,
            @RequestParam("realisateur") String realisateur,
            @RequestParam("acteurs") String acteurs,
            @RequestParam("note") double note,
            Model model) {

        Film film = new Film();
        film.setTitre(titre);
        film.setDescription(description);
        film.setDateDeSortie(dateSortie);
        film.setDuree(duree);
        film.setGenre(genre);
        film.setRealisateur(realisateur);
        film.setActeurs(acteurs);
        film.setNote(note);

        filmService.ajouterMovie(film);

        model.addAttribute("message", "Film ajouté avec succès");
        return "redirect:/Films/create";
    }
}
