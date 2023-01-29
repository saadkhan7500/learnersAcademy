package service;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import entities.Classs;
import entities.Student;
import entities.Subject;
import entities.Teacher;

public class ClasssImpl {
	public static int createClassData(String name, List<Student> students, List<Subject> subjects,
			List<Teacher> teachers) {

		Classs c = new Classs(name, students, subjects, teachers);

		SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
		Session session = sessionFactory.openSession();

		Transaction t = session.beginTransaction();
		session.save(c);
		t.commit();
		session.close();

		return 1;
	}

	public static int updateClassData(String name, List<Student> students, List<Subject> subjects,
			List<Teacher> teachers) {

		Classs c = new Classs(name, students, subjects, teachers);

		SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
		Session session = sessionFactory.openSession();

		Transaction t = session.beginTransaction();

		session.update(c);

		t.commit();

		session.close();

		return 1;
	}
}
