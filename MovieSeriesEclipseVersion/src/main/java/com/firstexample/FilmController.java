package com.firstexample;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.firstexample.dao.FilmDao;
import com.firstexample.dao.UtilisateurDao;
import com.firstexample.model.Film;

@Controller
public class FilmController {
	
	private final FilmDao filmDao;
	
	@Autowired
    public FilmController(FilmDao filmDao) {
        this.filmDao = filmDao;
    }
	
	  @GetMapping("/Film")
	    public String getAllFilms(Model model) {
	        List<Film> Film = filmDao.getAllData();
	        for (Film u : Film) {
	            System.out.println("ID: " + u.getId());
	            System.out.println("Nom: " + u.getTitre());
	        }        
	        model.addAttribute("Film", Film);
	        return "Films"; 
	    }

	}