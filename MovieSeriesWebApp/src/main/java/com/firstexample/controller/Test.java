package com.firstexample.controller;

import java.util.List;
import com.firstexample.dao.UtilisateurDao;
import com.firstexample.model.Utilisateur;

public class Test {

    public static void main(String[] args) {
        UtilisateurDao utilisateurDao = new UtilisateurDao();


        // Retrieve all utilisateurs
        List<Utilisateur> utilisateurs = utilisateurDao.getAllData();
        for (Utilisateur u : utilisateurs) {
            System.out.println("Utilisateur ID: " + u.getId());
            System.out.println("Utilisateur Nom: " + u.getNom());
            System.out.println("Utilisateur Email: " + u.getEmail());
            System.out.println("Utilisateur Password: " + u.getPassword());
        }

        // Close the DAO
        utilisateurDao.close();
    }
}
