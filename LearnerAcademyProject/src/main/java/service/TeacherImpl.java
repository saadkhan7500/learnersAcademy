package service;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import entities.Teacher;

public class TeacherImpl {
	public static int createTeacherDetails(String name) {
		String teacherName = name;
		Teacher teacher = new Teacher();
		teacher.setTeacherName(teacherName);

		SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
		Session session = sessionFactory.openSession();

		Transaction t = session.beginTransaction();
		session.save(teacher);
		t.commit();
		session.close();

		return 1;
	}
	public static Set<String> getAllTeachers()
	{
		
		  SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
	      Session session = sessionFactory.openSession();
	     List<Teacher> teachers =  session.createQuery("from Teacher").list();      
	     
	     Set<String> hSet = new HashSet<String>();
	     for(Teacher teacher: teachers)
	     {
	    	 hSet.add(teacher.getTeacherName());
	     }
	     
	     Transaction t = session.beginTransaction(); 
	   
	     t.commit();
	     session.close();
	    return hSet;
	 
	}

}
