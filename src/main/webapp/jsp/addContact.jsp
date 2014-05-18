<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


<html>
  <head> Add Contact</head>
  <body>
     <h1>Add Contact Form</h1>
     
     <form action="contact?add" method="post">
        <input type="hidden" name="add" />
     	<ul>
     		<li> Name : <input type="text" name="name"  /> </li>
     		<li> Street : <input type="text" name="street"  /> </li>
     		<li> City : <input type="text" name="city"  /> </li>
     		<li> State :<input type="text" name="state"  /> </li>
     		<li> Zip :<input type="text" name="zip"  /> </li>     		
     	</ul>
     	<input type="submit" value="Add" />
     </form>
     <a href="contacts">Back to Contact List </a>  
           
  </body>
</html>