package com.firstexample.model;

import javax.persistence.*;

@Entity
public class Admin {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private String nom  ;

    private String email ;

    private String password ;

    // Constractur
    public  Admin() {

    }

    public  Admin(String nom , String email , String password){
        this.nom = nom ;
        this.email = email;
        this.password = password;
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


