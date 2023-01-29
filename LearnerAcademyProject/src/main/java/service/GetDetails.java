package service;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import entities.Classs;

public class GetDetails 
{
	
		
	
	
	public static List<Classs> getAllData()
	{
		SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
	      Session session = sessionFactory.openSession();
	      List<Classs> clas = session.createQuery("from Classs").list();  
		   
	      for(Classs stu: clas)
	      {
	    	  System.out.println(stu);
	      }
	      Transaction t = session.beginTransaction(); 
		   
		     t.commit();
		     session.close();
		     
		     return null;
	}


}
