package entities;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Subject 
{
	
	@Id
	
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int subjectId;
	
	private String subjectName;

	
	
	public Subject() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

	public Subject(String subjectName) {
		super();
		this.subjectName = subjectName;
	}



	public Subject(int subjectId, String subjectName) {
		super();
		this.subjectId = subjectId;
		this.subjectName = subjectName;
	}

	public int getSubjectId() {
		return subjectId;
	}

	public void setSubjectId(int subjectId) {
		this.subjectId = subjectId;
	}

	public String getSubjectName() {
		return subjectName;
	}

	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}

	@Override
	public String toString() {
		return "Subject [subjectId=" + subjectId + ", subjectName=" + subjectName + "]";
	}

	

}
