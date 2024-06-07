package com.firstexample.model;

import javax.persistence.*;

@Entity
public class Admin {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id_admin;



    private String nom  ;

    private String email ;

    private String password ;

    // Constractur
    public  Admin() {

    }

    public  Admin(int id_admin ,String nom , String email , String password){
        this.id_admin = id_admin;
        this.nom = nom ;
        this.email = email;
        this.password = password;
    }

    public int getId_admin() {
        return id_admin;
    }

    public void setId_admin(int id_admin) {
        this.id_admin = id_admin;
    }

    public String getNom(){
        return nom;
    }

    public String getEmail(){
        return email;
    }

    public String getPassword(){
        return password;
    }

   public void setNom(String nom){
       this.nom = nom;
   }

    public void setEmail(String email) {
        this.email = email;
    }
    public void setPassword(String password) {
        this.password = password;
    }
}


