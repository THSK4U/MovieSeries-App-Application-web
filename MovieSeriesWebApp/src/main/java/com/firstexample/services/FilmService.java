package com.firstexample.services;

import com.firstexample.dao.FILMdao;
import com.firstexample.dao.implimentation.FILMdaoDaoImplimentation;
import com.firstexample.model.Film;

public class FilmService {

    private FILMdao FILMdao;

    public FilmService() {
        this.FILMdao = new FILMdaoDaoImplimentation(); // Vous pouvez utiliser une injection de dépendances ici
    }

    public Film ajouterMovie(Film Film) {
        return FILMdao.ajouterFilm(Film);
    }

    // Autres méthodes de service à implémenter
}