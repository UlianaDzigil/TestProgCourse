<%@ page import="Models.Student" %>
<%@ page import="Models.MyModel" %>
<%@ page import="Models.Group" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %><%--
  Created by IntelliJ IDEA.
  User: ulana
  Date: 03.05.2020
  Time: 21:43
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
    String a1 = request.getParameter("studentName");
    String a2 = request.getParameter("studentSurname");
    int a3 = Integer.parseInt(request.getParameter("studentScore"));
    String g1 = request.getParameter("groupName");
    base.addStudent(a1, a2, a3, g1);
%>
<%
    ArrayList<Group> grps = base.groups;

    ArrayList<String> names = new ArrayList<>();
    ArrayList<String> surnames = new ArrayList<>();
    ArrayList<String> scores = new ArrayList<>();
    ArrayList<String> groupes = new ArrayList<>();
    ArrayList<String> ides = new ArrayList<>();
    for(Group gr : grps){
        for(Student st : gr.students){
            names.add(st.getName());
            surnames.add(st.getSurname());
            scores.add(Integer.toString(st.getScore()));
            groupes.add(gr.getName());
            ides.add(st.getId());
        }
    }
    request.setAttribute("names", names);
    request.setAttribute("surnames", surnames);
    request.setAttribute("scores", scores);
    request.setAttribute("groupes", groupes);
    request.setAttribute("ides", ides);
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
            <table border = "0" align="center" class="article1">
                <tr>
                    <td > Student name </td>
                    <td > Student surname </td>
                    <td > Student score </td>
                    <td > Student group </td>
                    <td > Student ID </td>

                </tr>
                <% int i = 0;%>
                <c:forEach items="${names}" >
                    <tr>
                        <td><%= names.get(i)%></td>
                        <td><%= surnames.get(i)%></td>
                        <td><%= scores.get(i)%></td>
                        <td><%= groupes.get(i)%></td>
                        <td><%= ides.get(i)%></td>
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
