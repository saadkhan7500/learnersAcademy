package entities;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
public class Classs 
{
	@Id
	private String className;
	
	
	@OneToMany(cascade=CascadeType.ALL )
	@JoinColumn(name="class")
	private List<Student> student;
	
	
	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name = "class")
	private List<Subject> subject;
	
	
	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name = "class")
	private List<Teacher> teacher;

	public Classs(String className, List<Student> student, List<Subject> subject, List<Teacher> teacher) {
		super();
		this.className = className;
		this.student = student;
		this.subject = subject;
		this.teacher = teacher;
	}

	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	public List<Student> getStudent() {
		return student;
	}

	public void setStudent(List<Student> student) {
		this.student = student;
	}

	public List<Subject> getSubject() {
		return subject;
	}

	public void setSubject(List<Subject> subject) {
		this.subject = subject;
	}

	public List<Teacher> getTeacher() {
		return teacher;
	}

	public void setTeacher(List<Teacher> teacher) {
		this.teacher = teacher;
	}

	public Classs() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Classs [className=" + className + "\n, student=" + student + ", subject=" + subject + ", teacher="
				+ teacher + "]";
	}
	
	
	
	
	
	

}
