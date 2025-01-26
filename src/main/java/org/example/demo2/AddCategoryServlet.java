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
public class AddCategoryServlet extends HttpServlet {

    private final CategoryBO categoryBO = (CategoryBO) BOFactory.getBoFactory().getBO(BOFactory.BOTypes.CATEGORY);

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            // Get parameters from the request (category name and description)
            String categoryName = req.getParameter("categoryName");
            String categoryDescription = req.getParameter("categoryDescription");

            // Log input for debugging
            System.out.println("Category Name: " + categoryName);
            System.out.println("Category Description: " + categoryDescription);

            // Validate inputs
            if (categoryName == null || categoryName.trim().isEmpty()) {
                req.setAttribute("errorMessage", "Category name is required!");
                req.getRequestDispatcher("/AdminCategory.jsp").forward(req, resp);
                return;
            }

            if (categoryDescription == null || categoryDescription.trim().isEmpty()) {
                req.setAttribute("errorMessage", "Category description is required!");
                req.getRequestDispatcher("/AdminCategory.jsp").forward(req, resp);
                return;
            }

            categoryName = categoryName.trim();
            categoryDescription = categoryDescription.trim();

            // Check if category already exists
            Category existingCategory = categoryBO.getById(categoryName);
            if (existingCategory != null) {
                resp.sendRedirect(req.getContextPath() + "/AdminCategory.jsp?saveFail=Category name already exists!");
                return;
            }

            // Create new Category object
            Category category = new Category();
            category.setName(categoryName);
            category.setDescription(categoryDescription);

            // Save category
            boolean isSaved = categoryBO.save(category);

            // Redirect based on save status
            if (isSaved) {
                resp.sendRedirect(req.getContextPath() + "/AdminCategory.jsp?saveSuccess=Category Saved Successfully!");
            } else {
                resp.sendRedirect(req.getContextPath() + "/AdminCategory.jsp?saveFail=Category Save Failed!");
            }

        } catch (Exception e) {
            // Log the error
            e.printStackTrace();
            resp.sendRedirect(req.getContextPath() + "/AdminCategory.jsp?saveFail=An unexpected error occurred while saving the category!");
        }
    }
}
