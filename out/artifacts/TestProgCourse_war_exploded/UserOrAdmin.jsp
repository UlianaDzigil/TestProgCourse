<%--
  Created by IntelliJ IDEA.
  User: ulana
  Date: 22.05.2020
  Time: 15:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
</head>
<body>
<%
    boolean isAdmin = false;
    if(request.isUserInRole("admin")) {
        request.setAttribute("pageUser", "adm");
        isAdmin = true;
    }else {
        request.setAttribute("pageUser", "notAdm");
        isAdmin = false;
    }
    request.setAttribute("isAdmin", isAdmin);

%>
</body>
</html>
