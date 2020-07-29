<%@ page import="Models.Group" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: ulana
  Date: 03.05.2020
  Time: 21:35
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

<table border="0">
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
            <ul>
                <li><form action="http://localhost:8080/TestProgCourse_war_exploded/SeeGroupsList.jsp" method="get">
                    <p>View lists:</p>
                    <input type="submit" value="Show">
                </form></li>
                <li><form action="http://localhost:8080/TestProgCourse_war_exploded/Search.jsp" method="get">
                    <p>Search:</p>
                    <input type="submit" value="Show">
                </form></li>
                <li><form action="AddStudent.jsp" method="get" >
                    <p>Create student:</p>
                    <input type="submit" value="Show">
                </form></li>
                <li><form action="AddGroup.jsp" method="get">
                    <p>Create group:</p>
                    <input type="submit" value="Show">
                </form></li>
                <li><form action="Remove.jsp" method="get">
                    <p>Deleting or editing:</p>
                    <input type="submit" value="Show">
                </form></li>
            </ul>
        </td>
        <td class="article">
            Create a new student:
            <form action="AddingStudent.jsp" name="Характеристики">
                <p>Student name:<input type="text" name="studentName" required>
                    Student surname:<input type="text" name="studentSurname" required></p>
                <p>Student score:<input type="text" name="studentScore" required pattern="^[0-9]+$">
                    Student group:<input type="select" name="groupName" required>
                </p>
                <input type="submit" value="Create">
            </form>
            <a href="http://localhost:8080/TestProgCourse_war_exploded/GeneralPage.jsp">To the main page</a>

        </td>
    </tr>
    <tr>
        <td colspan="2" class="footer">Copyright © 2020</td>
    </tr>
</table>


</body>
</html>
