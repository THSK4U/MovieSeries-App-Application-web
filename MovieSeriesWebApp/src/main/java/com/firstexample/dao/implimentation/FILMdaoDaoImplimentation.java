package com.firstexample.dao.implimentation;



import com.firstexample.dao.FILMdao;
import com.firstexample.model.Film;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class FILMdaoDaoImplimentation implements FILMdao {

    private EntityManagerFactory entityManagerFactory;
    private EntityManager entityManager;

    public FILMdaoDaoImplimentation() {
        this.entityManagerFactory = Persistence.createEntityManagerFactory("test");
        this.entityManager = this.entityManagerFactory.createEntityManager();
    }

    public FILMdaoDaoImplimentation(jakarta.persistence.EntityManagerFactory entityManagerFactory, jakarta.persistence.EntityManager entityManager) {
    }

    @Override
    public Film ajouterFilm(Film Film) {
        entityManager.getTransaction().begin();
        entityManager.persist(Film);
        entityManager.getTransaction().commit();
        return Film;
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