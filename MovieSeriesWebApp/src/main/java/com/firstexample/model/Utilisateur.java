package com.ms.model;

import javax.persistence.*;

@Entity
public class Utilisateur {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String email;
    private String nom;
    private String password;

    public Utilisateur(int id, String email, String nom, String password) {
        this.id = id;
        this.email = email;
        this.nom = nom;
        this.password = password;
    }
    public Utilisateur() {

    }
    public Utilisateur(String email, String nom, String password) {
        this.email = email;
        this.nom = nom;
        this.password = password;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }


}
