<%--
  Created by IntelliJ IDEA.
  User: ulana
  Date: 09.05.2020
  Time: 14:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="AdminStyle.jsp" %>
<html>
<head>
    <title>Faculty website</title>

</head>
<body>

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
            <h3 align="center">Delete student or group</h3>
            <form action="DellByName.jsp" name="Удаление студента:">
                <p>Student ID:<input type="text" name="dellId" required>
                </p>
                <input type="submit" value="Delete">
            </form>
            <form action="DellByGroup.jsp" name="Удаление групы:">
                <p>Group name:<input type="text" name="dellGroup" required>
                </p>
                <input type="submit" value="Delete">
            </form>
            <h3 align="center">Move a student to another group</h3>
            If you try to move a student to a group that does not exist, that student will be moved to the group "other" by default
            <form action="MoveById.jsp" name="Перемещение студента в другую групу:">
                <p>Student ID:<input type="text" name="redIdToGroup" required></p>
                <p>Group name:<input type="text" name="redToGroup" required>
                </p>
                <input type="submit" value="Move">
            </form>
            <h3 align="center">Edit student</h3>
            <form action="RedByName.jsp" name="Редактирование студента:">
                <p>Student ID:<input type="text" name="redIdOfStud" required></p>
                <p>New parameters of student:</p>
                <p>Student name:<input type="text" name="newStudentName" required>
                    Student surname:<input type="text" name="newStudentSurname" required></p>
                <p>Student score:<input type="text" name="newStudentScore" required pattern="^[0-9]+$">
                </p>
                <input type="submit" value="Edit">
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