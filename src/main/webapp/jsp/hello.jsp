<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


<html>
  <head> JSP</head>
  <body>
     Hello World  Zaki Ahmad !
     <c:forEach var="name" items="${names}">
         <h1> Allo, ${name} </h1>
     </c:forEach>
           
  </body>
</html>