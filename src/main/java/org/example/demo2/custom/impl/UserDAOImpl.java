package org.example.demo2.custom.impl;


import org.example.demo2.Entity.User;
import org.example.demo2.config.SessionFactoryConfig;
import org.example.demo2.custom.UserDAO;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;

public class UserDAOImpl implements UserDAO {

    @Override
    public boolean save(User user) {
        try(Session session = SessionFactoryConfig.getInstance().getSession()) {
            Transaction transaction = session.beginTransaction();
            session.persist(user);
            transaction.commit();

        }
        return false;
    }

    @Override
    public void update(User user) {

        try (Session session = SessionFactoryConfig.getInstance().getSession()){
            Transaction transaction = session.beginTransaction();
            session.merge(user);
            transaction.commit();

        }
    }

    @Override
    public void delete(String id) {

        try (Session session = SessionFactoryConfig.getInstance().getSession()){
            Transaction transaction = session.beginTransaction();
            User user = session.get(User.class,id);
            if (user != null){
                session.remove(user);
            }
            transaction.commit();
        }
    }

    @Override
    public User findById(String id) {
        return null;
    }

    @Override
    public List<User> getAll() {
        return null;
    }

    @Override
    public User findByUserName(String userName) {
        return null;
    }
}
