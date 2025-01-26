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
@WebServlet(name = "AddCategoryServlet", value = "/add-category-servlet")
public class AddCatagorySarvlet extends HttpServlet {

private final CategoryBO categoryBO = (CategoryBO) BOFactory.getBoFactory().getBO(BOFactory.BOTypes.CATEGORY);

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String categoryName = req.getParameter("categoryName");
        String categoryDescription = req.getParameter("categoryDescription");

        System.out.println("Category Name: " + categoryName);
        System.out.println("Category Description: " + categoryDescription);

        if (categoryName == null || categoryName.trim().isEmpty() || categoryDescription == null || categoryDescription.trim().isEmpty()) {

            req.setAttribute("errorMessage", "Both category name and description are required!");
            req.getRequestDispatcher("/catagory.jsp").forward(req, resp);
            return;
        }


        Category category = new Category();
        category.setName(categoryName);
        category.setDescription(categoryDescription);

        try {

            boolean isSaved = categoryBO.save(category);


            if (isSaved) {
                resp.sendRedirect(req.getContextPath() + "/catagory.jsp?saveSuccess=Category Saved Successfully!");
            } else {
                resp.sendRedirect(req.getContextPath() + "/catagory.jsp?saveFail=Category Save Failed!");
            }
        } catch (Exception e) {

            e.printStackTrace();


            resp.sendRedirect(req.getContextPath() + "/catagory.jsp?saveFail=An error occurred while saving the category!");
        }
    }
}
