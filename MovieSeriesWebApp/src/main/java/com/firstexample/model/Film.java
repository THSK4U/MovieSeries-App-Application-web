package com.firstexample.model;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Entity
public class Film {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String titre;

    private String description;

    private String dateDeSortie;

    private Integer duree;

    private String genre;

    private String realisateur;

    private String acteurs;

    private Double note;


    public Film() {

    }
    public Film(Long id) {
        this.id = id;
    }
    
    public Film(Long id, String titre, String description, String dateDeSortie, Integer duree, String genre, String realisateur, String acteurs, Double note) {
        this.id = id;
        this.titre = titre;
        this.description = description;
        this.dateDeSortie = dateDeSortie;
        this.duree = duree;
        this.genre = genre;
        this.realisateur = realisateur;
        this.acteurs = acteurs;
        this.note = note;
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

    public String getDateDeSortie() {
        return dateDeSortie;
    }

    public void setDateDeSortie(String dateDeSortie) {
        this.dateDeSortie = dateDeSortie;
    }

    public Integer getDuree() {
        return duree;
    }

    public void setDuree(Integer duree) {
        this.duree = duree;
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

    public Double getNote() {
        return note;
    }

    public void setNote(Double note) {
        this.note = note;
    }
}