package com.firstexample.model;

import javax.persistence.*;

@Entity
public class Moderateur {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String nom;

    private String email;

    private String password;

    private String role;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
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

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public Moderateur(Long id, String nom, String email, String password, String role) {
		super();
		this.id = id;
		this.nom = nom;
		this.email = email;
		this.password = password;
		this.role = role;
	}
	public Moderateur(String nom, String email, String password, String role) {
		super();
		this.nom = nom;
		this.email = email;
		this.password = password;
		this.role = role;
	}
	public Moderateur() {
		super();

	}
    
}
