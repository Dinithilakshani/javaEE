package org.example.demo2.API;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(name = "lOGINSarvlet", value = "/loginform")
public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Validate the email and password against your user database
        boolean isValid = authenticateUser(email, password);

        if (isValid) {
            // Create a session for the user
            HttpSession session = request.getSession();
            session.setAttribute("user", email);

            // Redirect to the user's account page
            response.sendRedirect("/account");
        } else {
            // Display an error message
            response.sendRedirect("/login?error=invalidCredentials");
        }
    }

    private boolean authenticateUser(String email, String password) {
        // Implement your user authentication logic here
        // For example, check the email and password against a database
        return email.equals("example@email.com") && password.equals("mypassword");
    }}