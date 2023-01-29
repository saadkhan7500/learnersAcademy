package service;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.service.String;

import entities.Subject;

public class SubjectImpl {
	@SuppressWarnings("deprecation")
	public static int deleteSubject(String name) {
		SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
		Session session = sessionFactory.openSession();

		Transaction t = session.beginTransaction();
		Query q = session.createQuery("delete from Subject s where s.subjectName = :e");
		q.setParameter("e", name);

		int i = q.executeUpdate();

		System.out.println("Record(s) Deleted.");

		t.commit();
		session.clear();
		session.close();
		return 1;
	}

	public static int createSubjectDetails(String name) {
		String subjectName = name;
		Subject sub = new Subject();
		sub.setSubjectName(subjectName);

		SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
		Session session = sessionFactory.openSession();

		Transaction t = session.beginTransaction();
		session.save(sub);
		t.commit();
		session.close();

		return 1;
	}

	public static Set<String> getAllSubjects() {

		SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
		Session session = sessionFactory.openSession();

		List<Subject> subjects = session.createQuery("from Subject").list();

		Set<String> hSet = new HashSet<String>();

		for (Subject subject : subjects) {
			hSet.add(subject.getSubjectName());
		}

		Transaction t = session.beginTransaction();

		t.commit();
		session.close();
		return hSet;

	}

}
