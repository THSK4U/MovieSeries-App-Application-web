package com.firstexample.services;

import com.firstexample.dao.FILMdao;
import com.firstexample.dao.implimentation.FILMdaoDaoImplimentation;
import com.firstexample.model.Film;
import org.springframework.stereotype.Service;

@Service
public class FilmService {

    private FILMdao FILMdao;

    public FilmService() {
        this.FILMdao = new FILMdaoDaoImplimentation(); // You can use dependency injection here
    }

    public Film ajouterMovie(Film film) {
        return FILMdao.ajouterFilm(film);
    }

    // Other service methods
}
