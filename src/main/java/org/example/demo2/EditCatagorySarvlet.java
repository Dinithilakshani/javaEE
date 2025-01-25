package org.example.demo2;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.demo2.BO.BOFactory;
import org.example.demo2.BO.custom.CategoryBO;
import org.example.demo2.Entity.Category;

import java.io.IOException;
@WebServlet(name = "EditCategoryServlet", value = "/edit-category-servlet")

public class EditCatagorySarvlet extends HttpServlet {
    CategoryBO categoryBO = (CategoryBO) BOFactory.getBoFactory().getBO(BOFactory.BOTypes.CATEGORY);
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String categoryId = req.getParameter("categoryId");
        String editCategoryName = req.getParameter("editCategoryName");
        String editCategoryDescription = req.getParameter("editCategoryDescription");

        Category category = categoryBO.getById(categoryId);

        category.setName(editCategoryName);
        category.setDescription(editCategoryDescription);

        boolean isUpdated = categoryBO.update(category);

        if (isUpdated){
            resp.sendRedirect(req.getContextPath() + "/all-category-servlet?saveSuccess=Category Updated Successfully!");
        } else {
            resp.sendRedirect(req.getContextPath() + "/all-category-servlet?saveFail=Category update Failed!");
        }
    }
}