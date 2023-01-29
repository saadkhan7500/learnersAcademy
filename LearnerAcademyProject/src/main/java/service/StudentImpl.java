package service;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import entities.Classs;
import entities.Student;

public class StudentImpl {
	public static int createStudentDetails(String name) {

		Student student = new Student();
		student.setName(name);

		SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
		Session session = sessionFactory.openSession();

		Transaction t = session.beginTransaction();
		session.save(student);
		t.commit();
		session.close();

		return 1;
	}

	public static List<Classs> getStudent() {
		SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
		Session session = sessionFactory.openSession();
		// System.out.println("Session opened");
		List<Classs> clas = session.createQuery("from Classs").list();
		System.out.println("Query executed");
		for (Classs stu : clas) {
			System.out.println("Data" + stu);
		}
		Transaction t = session.beginTransaction();

		t.commit();
		session.close();
		return clas;
	}

	public static Set<String> getAllStudents() {

		SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
		Session session = sessionFactory.openSession();
		List<Student> students = session.createQuery("from Student").list();

		Set<String> hSet = new HashSet<String>();

		for (Student student : students) {
			hSet.add(student.getName());
		}

		Transaction t = session.beginTransaction();

		t.commit();
		session.close();
		return hSet;

	}

}
