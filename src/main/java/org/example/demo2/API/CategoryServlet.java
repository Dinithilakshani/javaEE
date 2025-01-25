package org.example.demo2.API;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name = "catagory" ,value = "/catagory")
public class CategoryServlet extends HttpServlet {

    String DB_URL ="jdbc:mysql://localhost:3306/ecommerces";
    String DB_USER ="root";
    String DB_PASSWORD ="1234";

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String id = req.getParameter("category_id");
        String name = req.getParameter("name");
        String description = req.getParameter("description");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(
                    DB_URL,
                    DB_USER,
                    DB_PASSWORD
            );

            String sql = "INSERT INTO customer (category_id,name,description) values (?,?,?,?)";
            PreparedStatement preparedStatement =  connection.prepareStatement(sql);
            preparedStatement.setString(1,name);
            preparedStatement.setString(2,description);
            preparedStatement.setString(3,id);

            int i = preparedStatement.executeUpdate();
            if(i>0){

                resp.sendRedirect("customer-save.jsp?message=Customer Saved Succesfully");
            }else {

            }

        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }

        resp.sendRedirect("category-save.jsp");
    }




}
