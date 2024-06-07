package com.firstexample.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;


import com.firstexample.model.Film;

public class FILM {
    public static void main(String[] args) {
        EntityManagerFactory factory = Persistence.createEntityManagerFactory("default");
        EntityManager entityManager = factory.createEntityManager();

        Film film = new Film();

        film.setTitre("TESTdfg HIBERNATE");
        film.setDescription("A test film for Hibernate.");
        film.setDateDeSortie("20fgg-01-01");
        film.setDuree(120);
        film.setGenre("Drama");
        film.setRealisateur("dsf sdg");
        film.setActeurs("Actor1, Actor2, Actor3");
        film.setNote(8.5);
        entityManager.getTransaction().begin();
        entityManager.persist(film);

        entityManager.getTransaction().commit();
        System.out.println("Insteretion succesfull");
        entityManager.close();
        factory.close();
    }
}
