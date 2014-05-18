<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


<html>
  <head> Contacts</head>
  <body>
     <h1>Contact List</h1>
     <ul>
     <c:forEach var="contact" items="${contacts}">
         <li><a href="???"> ${contact.name} </a>  </li>
     </c:forEach>
     </ul>
           
     <a href="contact?add">Add New Contact </a>
           
  </body>
</html>