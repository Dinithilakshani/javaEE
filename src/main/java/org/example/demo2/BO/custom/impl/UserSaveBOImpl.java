package org.example.demo2.BO.custom.impl;


import org.example.demo2.BO.custom.UserSaveBO;

import org.example.demo2.Entity.User;
import org.example.demo2.custom.DAOFactory;
import org.example.demo2.custom.UserDAO;

public class UserSaveBOImpl implements UserSaveBO {

    UserDAO userDAO = (UserDAO) DAOFactory.getDaoFactory().getDAO(DAOFactory.DAOTypes.USER);
    @Override
    public boolean savUser(User user) {
        return userDAO.save(user);
    }
}
