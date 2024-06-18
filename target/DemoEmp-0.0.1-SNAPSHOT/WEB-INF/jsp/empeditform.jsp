<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  
        <h1>Edit Employee</h1>  
       <form:form method="POST" action="/SpringMVCCRUDSimple/editsave">    
        <table >    
        <tr>  
        <td></td>    
         <td><form:hidden  path="id" /></td>  
         </tr>   
         <tr>    
         	<td>Name : </td>   
         	<td><form:input path="name"  /></td>  
         </tr>    
         <tr>    
         	<td>Email :</td>    
         	<td><form:input path="email" /></td>  
         </tr>   
         <tr>    
         	<td>Type :</td>    
         	<td><form:input path="type" /></td>  
         </tr>
         <tr>
         	<td>Gender :</td>
         	<td><form:input path="gender"/></td>
         </tr>
         <tr>
         	<td>Performance Score :</td>
         	<td><form:input path="performanceScore"/></td>
         </tr>   
           
         <tr>    
          <td> </td>    
          <td><input type="submit" value="Edit Save" /></td>    
         </tr>    
        </table>    
       </form:form>
       