package org.example.demo2.BO;


import org.example.demo2.BO.custom.impl.CategoryBOImpl;
import org.example.demo2.BO.custom.impl.UserBOImpl;



public class BOFactory {
    private static BOFactory boFactory;
    private BOFactory(){}

    public static BOFactory getBoFactory(){return (boFactory==null)?boFactory=new BOFactory():boFactory;}

    public enum BOTypes{
        CATEGORY, USER
    }
    public SuperBO getBO(BOTypes types){
        switch (types){
            case USER:
                return new UserBOImpl();
            case CATEGORY:
                return new CategoryBOImpl();
            default:
                return null;
        }
    }
}
