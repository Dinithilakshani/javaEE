package org.example.demo2.BO.custom.impl;

import org.example.demo2.BO.custom.CategoryBO;
import org.example.demo2.DAO.DAOFactory;
import org.example.demo2.DAO.custom.CategoryDAO;
import org.example.demo2.Entity.Category;

import java.util.List;

public class CategoryBoimpl implements CategoryBO {

    CategoryDAO categoryDAO = (CategoryDAO) DAOFactory.getDaoFactory().getDAO(DAOFactory.DAOTypes.CATEGORY);

    @Override
    public boolean save(Category category) {
        return categoryDAO.save(category);
    }

    @Override
    public List<Category> getAll() {
        return categoryDAO.getAll();
    }
    @Override
    public Category getById(String id) {
        return categoryDAO.findById(id);
    }

    @Override
    public boolean update(Category category) {
        return categoryDAO.update(category);
    }

    @Override
    public boolean delete(String id) {
        return categoryDAO.delete(id);
    }
}
