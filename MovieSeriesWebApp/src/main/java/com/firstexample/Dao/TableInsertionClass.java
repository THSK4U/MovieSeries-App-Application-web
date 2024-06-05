package com.firstexample.Dao;

import com.firstexample.model.Users;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class TableInsertionClass {
    public static void main(String[] args) {
        EntityManagerFactory factory = Persistence.createEntityManagerFactory("default");
        EntityManager entityManager = factory.createEntityManager();

            Users user = new Users();
            user.setName("fhdfhhfffh azze");
            entityManager.getTransaction().begin();
            entityManager.persist(user);

            entityManager.getTransaction().commit();
            System.out.println("Insteretion succesfull");
            entityManager.close();
            factory.close();
    }
}
