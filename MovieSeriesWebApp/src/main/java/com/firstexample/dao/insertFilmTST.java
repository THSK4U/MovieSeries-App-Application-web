package com.firstexample.dao;


import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.firstexample.dao.implimentation.FILMdaoDaoImplimentation;
import com.firstexample.model.Film;
import com.firstexample.dao.FILMdao;
import  com.firstexample.controller.Films;
import  com.firstexample.services.FilmService;

public class insertFilmTST {

    public static void main(String[] args) {
        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("default");
        EntityManager entityManager = entityManagerFactory.createEntityManager();

        FILMdao filMdao = new FILMdaoDaoImplimentation();

        Film film = new Film();

        film.setTitre("aaaa232aaasdaaa HIBERNATE");
        film.setDescription("A test film for Hibernate.");
        film.setDateDeSortie("20fgg-01-01");
        film.setDuree(120);
        film.setGenre("Drama");
        film.setRealisateur("dsf sdg");
        film.setActeurs("Actor1, Actor2, Actor3");
        film.setNote(8.5);
        filMdao.ajouterFilm(film);

        filMdao.close(); // Utilisation de la méthode close() définie dans MovieDao

        entityManager.close();
        entityManagerFactory.close();
    }
}
