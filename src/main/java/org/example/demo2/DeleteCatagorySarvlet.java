package org.example.demo2;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.demo2.BO.BOFactory;
import org.example.demo2.BO.custom.CategoryBO;

import javax.naming.Name;
import java.io.IOException;
@WebServlet(name = "DeleteCategoryServlet", value = "/delete-category-servlet")

public class DeleteCatagorySarvlet extends HttpServlet {

    CategoryBO categoryBO = (CategoryBO) BOFactory.getBoFactory().getBO(BOFactory.BOTypes.CATEGORY);
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String categoryId = req.getParameter("categoryId");

        boolean isDeleted = categoryBO.delete(categoryId);

        if (isDeleted){
            resp.sendRedirect(req.getContextPath() + "/all-category-servlet?saveSuccess=Category Deleted Successfully!");
        } else {
            resp.sendRedirect(req.getContextPath() + "/all-category-servlet?saveFail=Category Delete Failed!");
        }
    }
}
