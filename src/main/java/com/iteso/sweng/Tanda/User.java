package com.iteso.sweng.Tanda;

/**
 * Created by Alejandro on 15/10/2014.
 */
/**
 * Created by Charly on 15/10/2014.
 */
public class User {
    private String name;

    protected User (){

    }

    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }

    public User (String name){
            this.setName(name);
        }


}
