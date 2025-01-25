package org.example.demo2.BO.custom;


import org.example.demo2.BO.SuperBO;
import org.example.demo2.Entity.User;

public interface UserSaveBO extends SuperBO {
    boolean savUser(User user);
}
