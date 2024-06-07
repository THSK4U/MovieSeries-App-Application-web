package com.firstexample.model;

import javax.persistence.*;

@Entity
public class Moderateur {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id_moderateur;

    private String nom;

    private String email;

    private String password;

    // Default constructor
    public Moderateur() {
    }

    public Moderateur(String nom, int id_moderateur, String email, String password) {
        this.nom = nom;
        this.id_moderateur = id_moderateur;
        this.email = email;
        this.password = password;
    }

    // Getters and Setters
    public int getId_moderateur() {
        return id_moderateur;
    }

    public void setId_moderateur(int id_moderateur) {
        this.id_moderateur = id_moderateur;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
