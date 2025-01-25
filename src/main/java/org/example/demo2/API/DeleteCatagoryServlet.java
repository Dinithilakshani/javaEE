package org.example.demo2.API;//package org.example.demo2.API;
//
//import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//
//import java.io.IOException;
//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.PreparedStatement;
//import java.sql.SQLException;
//
//@WebServlet(name = "name",value = "/delete")
//public class DeleteCatagoryServletx extends HttpServlet {
//    @Override
//    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//
//        String id = req.getParameter("id");
//        try {
//            Class.forName("com.mysql.cj.jdbc.Driver");
//            Connection connection = DriverManager.getConnection(
//                    DB_URL ,
//                    DB_USE ,
//                    DB_PASSWORD
//
//
//                  );
//
//
//            String sql = "DELETE FROM customer WHERE id=?";
//            PreparedStatement preparedStatement = connection.prepareStatement(sql);
//
//            preparedStatement.setString( 1,id);
//            int deletedRowCount = preparedStatement.executeUpdate();
//
//            if (deletedRowCount > 0) {
//
//                resp.sendRedirect("customer-delete.jsp?message=Customer delete Succesfully");
//            } else {
//
//                resp.sendRedirect("customer-delete.jsp?error=Customer delete Error");
//
//            }
//
//        } catch (SQLException | ClassNotFoundException e) {
//            e.printStackTrace();
//            resp.sendRedirect(("customer-delete.jsp?error=faild to delete customer"));
//
//
//        }
//    }
//}
