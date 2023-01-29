<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="entities.*"%>
<%@ page import="service.*"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
          String classs = request.getParameter("class");
           String[] sub = request.getParameterValues("subjects");
           String[] tea = request.getParameterValues("teachers");
           String[] stu = request.getParameterValues("students");
           
           List<Subject> subject = new ArrayList<Subject>();
           List<Teacher> teacher = new ArrayList<Teacher>();
           List<Student> student = new ArrayList<Student>();
            
           
           System.out.println(classs);
           for(String subj: sub)
           {
        	 subject.add(new Subject(subj));
           }
           
           
           for(String teach: tea)
           {
        	   teacher.add(new Teacher(teach));
           }
           
           
           for(String stud: stu)
           {
        	 student.add(new Student(stud));
           }
           
           System.out.println(subject);
           System.out.println(teacher);
           System.out.println(student);
           
           if("Insert".equals(request.getParameter("submit")))
           {
        	   
        	   System.out.println("Inside Insert method");
         int res =   ClasssImpl.createClassData(classs, student, subject, teacher);

         if(res==1)
         {
   %>
   	<h2 style="text-align: center; color: green">Data Store
   		successfully</h2>
   	<%
       	  request.getRequestDispatcher("createClass.jsp").include(request, response);
         }
         else
         {

   %>
   	<h2 style="text-align: center; color: red">Data not stored for this class</h2>
   <%
   request.getRequestDispatcher("createClass.jsp").include(request, response);
         }
           }
           
           if("Update".equals(request.getParameter("submit")))
           {

        	   System.out.println("Inside Update method");
        	   
        	   int res =   ClasssImpl.updateClassData(classs, student, subject, teacher);

               if(res==1)
               {
         %>
         	<h2 style="text-align: center; color: green">Data updated
         		successfully</h2>
         	<%
             	  request.getRequestDispatcher("createClass.jsp").include(request, response);
               }
               else
               {

         %>
         	<h2 style="text-align: center; color: red">Data not updated for this class</h2>
         <%
         request.getRequestDispatcher("createClass.jsp").include(request, response);
               }
           }
   %>
</body>
</html>