<%@ page import="java.util.ArrayList" %>
<%@ page import="Models.Group" %>
<%@ page import="Models.MyModel" %>
<%--
  Created by IntelliJ IDEA.
  User: ulana
  Date: 07.05.2020
  Time: 20:37
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
    base.getBase();
%>

<%
    ArrayList<Group> gr2 = base.getGroups();
    request.setAttribute("grouuup", gr2);

%>


<table border="0" class="header">
    <tr>
        <td colspan="3" class="header"><h1 align="center">Faculty</h1>
            <h1 align="right" ><form action="LoginServlet" method="get" class="header"><input type="submit" value="Log in"></form>
                <form action="LogoutServlet" method="get" class="header"><input type="submit" value="Logout"></form></h1>
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
        <td class="article"><h2>General information</h2>
        <img src="https://acts.kpi.ua/app/uploads/2015/07/FictForAbitur.jpg" class="leftimg">
            <h3 class="text">
                <p>
                    The University is very old, it was founded in 1930 in the centre of the capital of Chuvash Republic – Cheboksary city. It was named for the talented Chuvash teacher Ivan Yakovlev. The establishment has developed rapidly since then, now it has become one of the largest universities of Russia.
                </p><p>
                Today it gives students an opportunity to choose higher and post-graduate educational programs for 42 professions. The education is provided by qualified specialists, professors and doctors. There are 12 full-time faculties at the University which enroll more than 6000 students.
            </p><p>
                There are the faculties of Music and Art, Foreign languages, Psychology, Science, History and Philology, Pre-school education and many others. The University includes 6 academic buildings with spacious classrooms, a modern library, a reading-room, well-equipped laboratories and workshops, computer rooms, gymnasiums and dining-rooms.
             </p>
                <img src="https://kpi.ua/files/images-story/16-06-30.jpg" class="rightimg">
                <p>
                    Faculty trains specialists in the sphere of the developing new metallic and non-metallic materials, obtaining and formation of high-end technologies, determining material properties and quality evaluation of finished products, automation of technological processes using modern means of Computer Science and Information Technology

                    After long-term experience of productive collaboration of the Faculty and the National Academy of Sciences of Ukraine, they established an educational and scientific association in sphere of "Materials science", "Materials Science and Special Metallurgy", "Materials and Metallurgy", which includes world famous research centers of and the National Academy of Sciences of Ukraine: The E.O.Paton Electric Welding Institute, Frantsevich Institute for Problems of Materials Science, Kurdyumov Institute for Physics of Metals, Physico-Technological Institute of Metals and Alloys, Bakul Institute for Superhard Materials. As a result, bases of these institutes were involved in the educational process of human resource development.

                </p><p>
                Graduates work in institutions of National Academy of Sciences of Ukraine, branch scientific-research institutions, design institutes, organizations and the enterprises in almost all branches of industry, producing components for machines and mechanisms made of composite materials, metal alloys.
                 </p>
            </h3>
        </td>
    </tr>
    <tr>
        <td colspan="2" class="footer">Copyright © 2020</td>
    </tr>
</table>


</body>
</html>
