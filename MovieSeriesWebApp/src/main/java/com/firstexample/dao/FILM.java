package com.firstexample.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;


import com.firstexample.model.Film;

public class FILM {
    public static void main(String[] args) {
        EntityManagerFactory factory = Persistence.createEntityManagerFactory("default");
        EntityManager entityManager = factory.createEntityManager();

        Film title = new Film();
        title.setTitre("TEST HIBERNATE");
        entityManager.getTransaction().begin();
        entityManager.persist(title);

        entityManager.getTransaction().commit();
        System.out.println("Insteretion succesfull");
        entityManager.close();
        factory.close();
    }
}
