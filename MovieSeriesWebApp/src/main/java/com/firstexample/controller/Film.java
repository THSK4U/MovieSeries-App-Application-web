package com.firstexample.controller;


import com.firstexample.model.Film;
//import com.firstexample.service.FilmService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/Films")
public class Film {

    @Autowired
    private FilmService FilmService;

    @GetMapping("/create")
    public String showAddFilmForm() {
        return "addFilm"; // This returns the name of the JSP file: addFilm.jsp
    }

    @PostMapping("/add")
    public String addFilm(
            @RequestParam("titre") String titre,
            @RequestParam("description") String description,
            @RequestParam("dateSortie") String dateSortie,
            @RequestParam("duree") int duree,
            @RequestParam("genre") String genre,
            @RequestParam("realisateur") String realisateur,
            @RequestParam("acteurs") String acteurs,
            @RequestParam("note") double note,
            @RequestParam("image") String image,
            Model model) {

        Film film = new Film();
        film.s.(titre);
        Film.setDescription(description);
        Film.setDateSortie(dateSortie);
        Film.setDuree(duree);
        Film.setGenre(genre);
        Film.setRealisateur(realisateur);
        Film.setActeurs(acteurs);
        Film.setNote(note);
        Film.setImage(image);

        FilmService.ajouterFilm(Film);

        model.addAttribute("message", "Film ajouté avec succès");
        return "redirect:/Films/create";
    }
}