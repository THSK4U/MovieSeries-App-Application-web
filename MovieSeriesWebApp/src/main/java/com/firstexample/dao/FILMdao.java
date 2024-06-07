package com.firstexample.dao;

import com.firstexample.model.Film;

public interface FILMdao {
    Film ajouterFilm(Film Film);
    Film modifierFilm(Film Film);
    void close(); // Ajouter la méthode close à l'interface
}