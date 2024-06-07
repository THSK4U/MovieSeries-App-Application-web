package com.firstexample.controller;

import java.util.List;
import com.firstexample.dao.UtilisateurDao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.firstexample.model.Utilisateur;

@Controller
public class UtilisateurController {

    private final UtilisateurDao utilisateurDao;
    
    @Autowired
    public UtilisateurController(UtilisateurDao utilisateurDao) {
        this.utilisateurDao = utilisateurDao;
    }
   
    @GetMapping("/utilisateurs")
    public String getAllUtilisateurs(Model model) {
        List<Utilisateur> utilisateurs = utilisateurDao.getAllData();
        for (Utilisateur u : utilisateurs) {
            System.out.println("ID: " + u.getId());
            System.out.println("Nom: " + u.getNom());
            System.out.println("Email: " + u.getEmail());
            System.out.println("password: " + u.getPassword());
        }        
        model.addAttribute("utilisateurs", utilisateurs);
        return "utilisateurs"; 
    }
    @GetMapping("/index")
    public String getAllUtilisateur(Model model) {
        List<Utilisateur> utilisateurs = utilisateurDao.getAllData();
        for (Utilisateur u : utilisateurs) {
            System.out.println("ID: " + u.getId());
            System.out.println("Nom: " + u.getNom());
            System.out.println("Email: " + u.getEmail());
            System.out.println("password: " + u.getPassword());
        }        
        model.addAttribute("message", utilisateurs);
        return "index"; 
    }
    @GetMapping("/register")
    public String register(Model model) {
        List<Utilisateur> utilisateurs = utilisateurDao.getAllData();
        for (Utilisateur u : utilisateurs) {
            System.out.println("ID: " + u.getId());
            System.out.println("Nom: " + u.getNom());
            System.out.println("Email: " + u.getEmail());
            System.out.println("password: " + u.getPassword());
        }        
        model.addAttribute("utilisateurs", utilisateurs);
        return "register"; 
    }
}
