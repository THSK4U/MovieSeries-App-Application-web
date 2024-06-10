package com.firstexample;

import java.util.List;

import com.firstexample.dao.UtilisateurDao;
import com.firstexample.model.Utilisateur;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

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
    @GetMapping("/save")
    public String save(@ModelAttribute Utilisateur utilisateur, Model model) {
            utilisateurDao.saveData(utilisateur);
            model.addAttribute("Smessage", "enregistré avec succès !");
            return "register";
    }
    
    @GetMapping("/Signup")
    public String signup(Model model) {
        return "Signup"; 
    }
    
    @GetMapping("/signin")
    public String signin(Model model) {
        return "register"; 
    }
    
    @GetMapping("/login")
    public String login(@ModelAttribute Utilisateur utilisateur, Model model) {
        Utilisateur loggedInUtilisateur = utilisateurDao.login(utilisateur.getEmail(), utilisateur.getPassword());
        if (loggedInUtilisateur != null) {
            model.addAttribute("message", "Connexion réussie !");
            return "redirect:/Film";
        } else {
            model.addAttribute("Fmessage", "Échec de la connexion. Veuillez réessayer.");
            return "register";
        }
    }
}
