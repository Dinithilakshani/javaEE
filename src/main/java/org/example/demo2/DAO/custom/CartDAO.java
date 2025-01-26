package org.example.demo2.DAO.custom;


import org.example.demo2.DAO.CrudDAO;
import org.example.demo2.Entity.Cart;

public interface CartDAO extends CrudDAO<Cart,String> {
    boolean save(Cart cart);

    Cart findById(String id);

    boolean update(Cart cart);

    boolean delete(String id);
}
