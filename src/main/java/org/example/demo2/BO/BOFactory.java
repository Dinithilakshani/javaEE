package org.example.demo2.BO;


import org.example.demo2.BO.custom.impl.UserSaveBOImpl;

public class BOFactory {
    private static BOFactory boFactory;
    private BOFactory(){}

    public static BOFactory getBoFactory(){return (boFactory==null)?boFactory=new BOFactory():boFactory;}

    public enum BOTypes{
        SAVE_USER
    }
    public SuperBO getBO(BOTypes types){
        switch (types){
            case SAVE_USER:
                return new UserSaveBOImpl();
            default:
                return null;
        }
    }
}
