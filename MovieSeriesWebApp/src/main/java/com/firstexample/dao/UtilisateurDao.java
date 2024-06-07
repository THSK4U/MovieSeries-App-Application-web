package com.ms.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.ms.model.Utilisateur;

@Repository
public class UtilisateurDao {

	private Configuration con;
	private SessionFactory factory;
	private Session session;
	private Transaction t;
	
	 public Utilisateur login(String email, String password) {
	        con = new Configuration().configure("hibernate.cfg.xml");
	        factory = con.buildSessionFactory();
	        session = factory.openSession();
	        t = session.beginTransaction();
	        Query<Utilisateur> query = session.createQuery("FROM Utilisateur WHERE email = :email AND password = :password", Utilisateur.class);
	        query.setParameter("email", email);
	        query.setParameter("password", password);
	        Utilisateur student = query.uniqueResult();
	        t.commit();
	        return student;
	    }
	 
	public void saveData(Utilisateur e) {
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

	    public List<Utilisateur> getAllData() {
	        con = new Configuration().configure("hibernate.cfg.xml");
	        factory = con.buildSessionFactory();
	        session = factory.openSession();
	        t = session.beginTransaction();
	        List<Utilisateur> utilisateur = session.createQuery("FROM Utilisateur", Utilisateur.class).list();
	        t.commit();
	        return utilisateur;
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
