package com.firstexample.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Repository;

import com.firstexample.model.Film;

@Repository
public class FilmDao {
	
	private Configuration con;
	private SessionFactory factory;
	private Session session;
	private Transaction t;
	
	public List<Film> getAllData() {
        con = new Configuration().configure("hibernate.cfg.xml");
        factory = con.buildSessionFactory();
        session = factory.openSession();
        t = session.beginTransaction();
        List<Film> Film = session.createQuery("FROM Film", Film.class).list();
        t.commit();
        return Film;
    }
	
}
