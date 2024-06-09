package com.firstexample.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.firstexample.model.Moderateur;
import com.firstexample.model.Utilisateur;

@Repository
public class ModerateurDao {

	private Configuration con;
	private SessionFactory factory;
	private Session session;
	private Transaction t;
		
	public Utilisateur login(String email, String password) {
		        con = new Configuration().configure("hibernate.cfg.xml");
		        factory = con.buildSessionFactory();
		        session = factory.openSession();
		        t = session.beginTransaction();
		        Query<Utilisateur> query = session.createQuery("FROM Moderateur WHERE email = :email AND password = :password AND role = Mod", Utilisateur.class);
		        query.setParameter("email", email);
		        query.setParameter("password", password);
		        System.out.println(password);
		        Utilisateur utilisateur = query.uniqueResult();
		        System.out.println(utilisateur);
		        t.commit();
		        return utilisateur;
		    }
		 
	public void saveData(Moderateur e) {
	        con = new Configuration().configure("hibernate.cfg.xml");
	        factory = con.buildSessionFactory();
	        session = factory.openSession();
	        t = session.beginTransaction();
	        session.save(e);
	        t.commit();
	    }

	public Utilisateur getUserById(int id) {
		        try (Session session = factory.openSession()) {
		            return session.get(Utilisateur.class, id);
		        } catch (Exception e) {
		            e.printStackTrace();
		            return null;
		        }
		    }

	public List<Moderateur> getAllData() {
		        con = new Configuration().configure("hibernate.cfg.xml");
		        factory = con.buildSessionFactory();
		        session = factory.openSession();
		        t = session.beginTransaction();
		        List<Moderateur> Moderateur = session.createQuery("FROM Moderateur", Moderateur.class).list();
		        t.commit();
		        return Moderateur;
		    }

	public void updateUtilisateur(Utilisateur u) {
		    	    con = new Configuration().configure("hibernate.cfg.xml");
		    	    factory = con.buildSessionFactory();
		    	    session = factory.openSession();
		    	    t = session.beginTransaction();
		    	    Utilisateur obj = session.get(Utilisateur.class, u.getId());
		    	    // TODO Auto-generated method stub
		    	    obj.setNom(u.getNom());
		    	    obj.setEmail(u.getEmail());
		    	    obj.setPassword(u.getPassword());
		    	    session.update(obj);
		    	    t.commit();
		    	}


	public void deleteData(Utilisateur s) {
		        // TODO Auto-generated method stub
		        con = new Configuration().configure("hibernate.cfg.xml");
		        factory = con.buildSessionFactory();
		        session = factory.openSession();
		        t = session.beginTransaction();
		        Utilisateur obj = session.get(Utilisateur.class, s.getId());
		        session.delete(obj);
		        t.commit();
		    }

	public void close() {
		        if (factory != null) {
		            factory.close();
		        }
		    }
		

	}

