package org.example.demo2;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.demo2.BO.BOFactory;
import org.example.demo2.BO.custom.CategoryBO;
import org.example.demo2.Entity.Category;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "AllCategoryServlet", urlPatterns = {"/all-category-servlet"})
public class AllCategorySavlet  extends HttpServlet {

    CategoryBO categoryBO = (CategoryBO) BOFactory.getBoFactory().getBO(BOFactory.BOTypes.CATEGORY);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("AllCategoryServlet doGet called");
        List<Category> categoryList = categoryBO.getAll();
        if (categoryList != null && !categoryList.isEmpty()) {
            req.setAttribute("categoryList", categoryList);
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("catagory.jsp");
            requestDispatcher.forward(req, resp);
        } else {
            resp.sendRedirect("catagory.jsp?allListFailed=No categories found.");
        }
    }
}
