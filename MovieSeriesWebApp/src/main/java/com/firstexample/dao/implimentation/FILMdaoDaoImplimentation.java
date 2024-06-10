package com.firstexample.dao.implimentation;



import com.firstexample.dao.FILMdao;
import com.firstexample.model.Film;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

@Repository
public class FILMdaoDaoImplimentation implements FILMdao {

    private EntityManagerFactory entityManagerFactory;
    private EntityManager entityManager;

    public FILMdaoDaoImplimentation() {
        this.entityManagerFactory = Persistence.createEntityManagerFactory("default");
        this.entityManager = this.entityManagerFactory.createEntityManager();
    }

    @Override
    public Film ajouterFilm(Film film) {
        entityManager.getTransaction().begin();
        entityManager.persist(film);
        entityManager.getTransaction().commit();
        return film;
    }

    @Override
    public Film modifierFilm(Film Film) {
        entityManager.getTransaction().begin();
        entityManager.merge(Film);
        entityManager.getTransaction().commit();
        return Film;
    }

    // Autres méthodes CRUD à implémenter

    public void close() {
        entityManager.close();
        entityManagerFactory.close();
    }
}