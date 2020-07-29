<%@ page import="java.util.ArrayList" %>
<%@ page import="Models.Group" %>
<%@ page import="Models.Student" %>
<%--
  Created by IntelliJ IDEA.
  User: ulana
  Date: 08.05.2020
  Time: 00:04
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
<jsp:useBean id="base" class="Models.MyModel" scope="application"/>
<%
    String givenSurame = request.getParameter("findSurname");

    ArrayList<String> names = new ArrayList<>();
    ArrayList<String> surnames = new ArrayList<>();
    ArrayList<String> scores = new ArrayList<>();
    ArrayList<String> groupes = new ArrayList<>();
    ArrayList<String> ides = new ArrayList<>();
    for(Group gr : base.groups){
        for(Student st : gr.students){
            String stName = st.getSurname();
            if(givenSurame.equalsIgnoreCase(stName)){
                names.add(st.getName());
                surnames.add(st.getSurname());
                scores.add(Integer.toString(st.getScore()));
                groupes.add(gr.getName());
                ides.add(st.getId());
            }
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
            <form action="LogoutServlet" method="get" >
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
        <td class="article">
            <table border = "0" align="center" class="article1">
                <tr>
                    <td > Student name </td>
                    <td > Student surname </td>
                    <td > Student score </td>
                    <td > Student group </td>
                    <c:if test="${isAdmin == true}">
                        <td height="8"> Student ID </td>
                    </c:if>
                </tr>
                <% int i = 0;%>
                <c:forEach items="${names}" >
                    <tr>
                        <td><%= names.get(i)%></td>
                        <td><%= surnames.get(i)%></td>
                        <td><%= scores.get(i)%></td>
                        <td><%= groupes.get(i)%></td>
                        <c:if test="${isAdmin == true}">
                        <td><%= ides.get(i)%></td>
                        </c:if>
                    </tr>
                    <% i = i + 1;%>
                </c:forEach>
            </table>
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
