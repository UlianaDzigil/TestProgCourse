<%--
  Created by IntelliJ IDEA.
  User: ulana
  Date: 07.05.2020
  Time: 23:38
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="UserOrAdmin.jsp"%>
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
            <form action="LogoutServlet" method="get" class="login">
                <input type="submit" value="Logout">
            </form>
            </h1>
        </td>
    </tr>
    <tr>
        <td class="sidebar">
            <b>Actions</b>
            <ul>
                <li><form action="SeeGroupsList.jsp" method="get">
                    <p>View lists:</p>
                    <input type="submit" value="Show">
                </form></li>
                <li><form action="Search.jsp" method="get">
                    <p>Search:</p>
                    <input type="submit" value="Show">
                </form></li>
                <c:if test="${isAdmin == true}">
                    <li><form action="AdminViews/AddStudent.jsp" method="get" >
                        <p>Create student:</p>
                        <input type="submit" value="Show">
                    </form></li>
                    <li><form action="AdminViews/AddGroup.jsp" method="get">
                        <p>Create group:</p>
                        <input type="submit" value="Show">
                    </form></li>
                    <li><form action="AdminViews/Remove.jsp" method="get">
                        <p>Deleting or editing:</p>
                        <input type="submit" value="Show">
                    </form></li>
                </c:if>
            </ul>
        </td>
        <td class="articleSearch">
            <h3 align="center">You can search a student by the student surname or by the group </h3>
            <form action="FindByName.jsp" name="Поиск по фамилии:">
                <p>Student surname:<input type="text" name="findSurname" required>
                </p>
                <input type="submit" value="Search">
            </form>
            <form action="FindByGroup.jsp" name="Поиск по групе:">
                <p>Group:<input type="text" name="findGroup" required>
                </p>
                <input type="submit" value="Search">
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