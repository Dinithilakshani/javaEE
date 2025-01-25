package org.example.demo2.BO.custom;

import org.example.demo2.BO.SuperBO;
import org.example.demo2.Entity.Category;

import java.util.List;

public interface CategoryBO extends SuperBO {

    boolean save(Category category);

    List<Category> getAll();

    Category getById(String id);

    boolean update(Category category);

    boolean delete(String id);
}