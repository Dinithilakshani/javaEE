package org.example.demo2;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.demo2.BO.BOFactory;
import org.example.demo2.BO.custom.UserBO;
import org.example.demo2.Entity.User;

import java.io.IOException;
import java.time.LocalDate;


@WebServlet(name = "UserRegistrationServlet", value = "/user-registration-servlet")
public class UserRegistrationSevlet extends HttpServlet {
    UserBO userSaveBO = (UserBO) BOFactory.getBoFactory().getBO(BOFactory.BOTypes.USER);
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String firstName = req.getParameter("firstName");
        String lastName = req.getParameter("lastName");
        String userName = req.getParameter("username");
        String roleString = req.getParameter("userType");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String confirmPassword = req.getParameter("confirmPassword");
        String address = req.getParameter("address");
        String dob = req.getParameter("dob");
        boolean isActive = true;

        if (!password.equals(confirmPassword)){
            resp.sendRedirect("register.jsp?passwordMisMatch=Password Does not Match!");
        }
        User user = new User();
        user.setName(firstName+" "+lastName);
        user.setUsername(userName);
        user.setPassword(password);
        user.setEmail(email);
        user.setActive(isActive);
        user.setRole(User.Role.valueOf(roleString.toUpperCase()));
        user.setAddress(address);
        user.setDob(LocalDate.parse(dob));

        boolean isSaved = userSaveBO.savUser(user);
        if (isSaved){
            resp.sendRedirect("register.jsp?saveSuccess=User Saved Success Fully!");
        }

    }
}
