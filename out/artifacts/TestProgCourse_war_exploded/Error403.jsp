<%--
  Created by IntelliJ IDEA.
  User: ulana
  Date: 07.05.2020
  Time: 20:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="Style.jsp"%>
<html>
<head>
    <title>Faculty website</title>

</head>
<body>
<table border="0">
    <tr>
        <td colspan="3" class="header"><h1 align="center">Faculty</h1>
            <h1 align="right">
                <form action="LogoutServlet" method="get" >
                    <input type="submit" value="Logout">
                </form>
            </h1>
        </td>
    </tr>
    <tr>
        <td class="article">
            You do not have access to this data!
            <a href="http://localhost:8080/TestProgCourse_war_exploded/GeneralPage.jsp">To the main page</a>
        </td>
    </tr>
    <tr>
        <td colspan="2" class="footer">Copyright © 2020</td>
    </tr>
</table>

</body>
</html>
