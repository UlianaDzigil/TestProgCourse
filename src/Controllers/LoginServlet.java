package Controllers;

        import javax.servlet.ServletException;
        import javax.servlet.annotation.HttpMethodConstraint;
        import javax.servlet.annotation.ServletSecurity;
        import javax.servlet.annotation.WebServlet;
        import javax.servlet.http.HttpServlet;
        import javax.servlet.http.HttpServletRequest;
        import javax.servlet.http.HttpServletResponse;
        import java.io.IOException;

@WebServlet(name = "LoginServlet")
@ServletSecurity(httpMethodConstraints = {
        @HttpMethodConstraint(value = "GET", rolesAllowed = "admin"),
        @HttpMethodConstraint(value = "POST", rolesAllowed = "admin")
})
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.sendRedirect("http://localhost:8080/TestProgCourse_war_exploded/GeneralPage.jsp");
    }
}
