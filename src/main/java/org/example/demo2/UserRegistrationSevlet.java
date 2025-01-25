package org.example.demo2;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.demo2.BO.BOFactory;
import org.example.demo2.BO.custom.UserSaveBO;
import org.example.demo2.Entity.User;

import java.io.IOException;


@WebServlet(name = "UserRegistrationServlet", value = "/register")
public class UserRegistrationSevlet extends HttpServlet {
    UserSaveBO userSaveBO = (UserSaveBO) BOFactory.getBoFactory().getBO(BOFactory.BOTypes.SAVE_USER);
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String userName  = req.getParameter("username");
        String roleString = req.getParameter("role");
        String email      = req.getParameter("email");
        String password   = req.getParameter("password");

        String address   = req.getParameter("address");

        boolean isActive = true;


        User user = new User();

        user.setUsername(userName);
        user.setPassword(password);
        user.setEmail(email);
        user.setActive(isActive);
        user.setRole(User.Role.valueOf(roleString.toUpperCase()));
        user.setAddress(address);


        boolean isSaved = userSaveBO.savUser(user);
        if (isSaved){
            resp.sendRedirect("Register.jsp?saveSuccess=User Saved Success Fully!");
        }

    }
}
