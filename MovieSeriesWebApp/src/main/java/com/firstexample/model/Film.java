package com.firstexample.model;

import javax.persistence.*;
import java.util.Date;

@Entity
public class Film {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String titre;
    private String description;
    private String dateDeSortie;
    private int duree;
    private String genre;
    private String realisateur;
    private String acteurs;
    private double note;

   /* @ManyToOne
    @JoinColumn(name = "utilisateur_id")
    private Utilisateur utilisateur;
hhfgh
     */


    public Film(String titre, String description, String dateDeSortie, int duree, String genre, String realisateur, String acteurs, double note) {
        this.titre = titre;
        this.description = description;
        this.dateDeSortie = dateDeSortie;
        this.duree = duree;
        this.genre = genre;
        this.realisateur = realisateur;
        this.acteurs = acteurs;
        this.note = note;
    }

    public Film() {}


    public Film(Long id) {
        this.id = id;
    }



    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitre() {
        return titre;
    }

    public void setTitre(String titre) {
        this.titre = titre;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getDuree() {
        return duree;
    }

    public void setDuree(int duree) {
        this.duree = duree;
    }

    public String getDateDeSortie() {
        return dateDeSortie;
    }

    public void setDateDeSortie(String dateDeSortie) {
        this.dateDeSortie = dateDeSortie;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public String getRealisateur() {
        return realisateur;
    }

    public void setRealisateur(String realisateur) {
        this.realisateur = realisateur;
    }

    public String getActeurs() {
        return acteurs;
    }

    public void setActeurs(String acteurs) {
        this.acteurs = acteurs;
    }

    public double getNote() {
        return note;
    }

    public void setNote(double note) {
        this.note = note;
    }

    @Override
    public String toString() {
        return "Film{" +
                "id=" + id +
                ", titre='" + titre + '\'' +
                ", description='" + description + '\'' +
                ", dateDeSortie='" + dateDeSortie + '\'' +
                ", duree=" + duree +
                ", genre='" + genre + '\'' +
                ", realisateur='" + realisateur + '\'' +
                ", acteurs='" + acteurs + '\'' +
                ", note=" + note +
                '}';
    }

    /* public void setUtilisateur(Utilisateur utilisateur) {
        this.utilisateur = utilisateur;
    }*/
}
