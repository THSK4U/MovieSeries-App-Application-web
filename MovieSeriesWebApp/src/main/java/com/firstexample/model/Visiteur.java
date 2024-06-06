package com.firstexample.model;

import javax.persistence.*;

@Entity
public class Visiteur {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int idVisiteur;
    private String nomVisiteur;
    private String EmailVisiteur;
    private String passwordVisiteur;

    public Visiteur() {
    }
    public Visiteur(String nomVisiteur, String emailVisiteur, String passwordVisiteur) {
        this.nomVisiteur = nomVisiteur;
        EmailVisiteur = emailVisiteur;
        this.passwordVisiteur = passwordVisiteur;
    }
    public Visiteur(int idVisiteur, String nomVisiteur, String emailVisiteur, String passwordVisiteur) {
        this.idVisiteur = idVisiteur;
        this.nomVisiteur = nomVisiteur;
        EmailVisiteur = emailVisiteur;
        this.passwordVisiteur = passwordVisiteur;
    }

    public int getIdVisiteur() {
        return idVisiteur;
    }

    public void setIdVisiteur(int idVisiteur) {
        this.idVisiteur = idVisiteur;
    }

    public String getNomVisiteur() {
        return nomVisiteur;
    }

    public void setNomVisiteur(String nomVisiteur) {
        this.nomVisiteur = nomVisiteur;
    }

    public String getEmailVisiteur() {
        return EmailVisiteur;
    }

    public void setEmailVisiteur(String emailVisiteur) {
        EmailVisiteur = emailVisiteur;
    }

    public String getPasswordVisiteur() {
        return passwordVisiteur;
    }

    public void setPasswordVisiteur(String passwordVisiteur) {
        this.passwordVisiteur = passwordVisiteur;
    }
}
