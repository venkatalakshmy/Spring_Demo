<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    

<!DOCTYPE html>
<html>
<body>    
<h1>Employees List</h1>  
<table>  
<tr><th>Id</th><th>Name</th><th>Email</th><th>Type</th><th>Gender</th><th>PerformaceScore</th><th>Edit</th><th>Delete</th></tr>  
   <c:forEach var="emp" items="${list}">   
   <tr>  
   <td>${emp.id}</td>  
   <td>${emp.name}</td>  
   <td>${emp.email}</td>  
   <td>${emp.type}</td>
   <td>${emp.gender}</td>
   <td>${emp.performanceScore}</td>  
   <td><a href="editemp/${emp.id}">Edit</a></td>  
   <td><a href="deleteemp/${emp.id}">Delete</a></td>  
   </tr>  
   </c:forEach>  
   </table>  
   <br/>  
   <a href="empform">Add New Employee</a> 
</body>
</html> 