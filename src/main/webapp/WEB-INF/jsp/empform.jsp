<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    

<!DOCTYPE html>
<html>
<body>
        <h1>Add New Employee</h1>  
       <form:form method="post" action="save">    
        <table >    
         <tr>    
         	<td>Name : </td>   
         	<td><form:input path="name"  /></td>  
         </tr>    
         <tr>    
         	<td>email :</td>    
         	<td><form:input path="email" /></td>  
         </tr>   
         <tr>    
         	<td>type :</td>    
         	<td><form:input path="type" /></td>  
         </tr>
         <tr>
         	<td>gender :</td>
         	<td><form:input path= "gender" /></td>
         </tr>
         <tr>
         	<td>performanceScore :</td>
         	<td><form:input path="performanceScore"/></td>
         </tr>   
         <tr>    
          <td> </td>    
          <td><input type="submit" value="Save" /></td>    
         </tr>    
        </table>    
       </form:form>    
</body>
</html>