<%@ page import="Models.Student" %>
<%@ page import="Models.MyModel" %>
<%@ page import="Models.Group" %>
<%@ page import="java.util.ArrayList" %>
<%--
  Created by IntelliJ IDEA.
  User: ulana
  Date: 07.05.2020
  Time: 18:25
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="AdminStyle.jsp" %>
<html>
<head>
    <title>Faculty website</title>

</head>
<body>
<jsp:useBean id="base" class="Models.MyModel" scope="application"/>
<%
    String g = request.getParameter("groupName");
    Group addgr = new Group(g);
    base.addGroup(addgr);

%>
<%
    ArrayList<Group> grps = base.groups;
    request.setAttribute("groupes", grps);
%>
<table border="0" class="header">
    <tr>
        <td colspan="3" class="header"><h1 align="center">Faculty</h1>
            <h1 align="right">
            <form action="http://localhost:8080/TestProgCourse_war_exploded/LogoutServlet" method="get" >
                <input type="submit" value="Logout">
            </form>
            </h1>
        </td>
    </tr>
    <tr>
        <td class="sidebar">
            <b>Actions</b>
            For admin only
            <a href="http://localhost:8080/TestProgCourse_war_exploded/GeneralPage.jsp"><h2>To the main page</h2></a>
        </td>
        <td class="article">
            Group successfully created
            Updated list:
            <table border = "0" align="center" class="article1">
                <tr>
                    <td> Group list: </td>
                </tr>
                <% int i = 0;%>
                <c:forEach items="${groupes}" >
                    <tr>
                        <td><%= grps.get(i)%></td>
                    </tr>
                    <% i = i + 1;%>
                </c:forEach>
            </table>
        </td>
    </tr>
    <tr>
        <td colspan="2" class="footer">Copyright © 2020</td>
    </tr>
</table>
</body>
</html>
