package org.example.demo2.DAO.custom;


import org.example.demo2.DAO.CrudDAO;
import org.example.demo2.Entity.User;

import java.util.List;

public interface UserDAO extends CrudDAO<User,String> {
    public boolean save(User user);
    public boolean update(User user);

    public boolean delete(String id);
    public User findById(String id);

    public List<User> getAll();

    User findByUserName(String userName);
}
