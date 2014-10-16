package com.iteso.sweng.Tanda;

import java.util.ArrayList;
/**
 * Created by Alejandro on 15/10/2014.
 */
public class Organizer extends User{
    public Organizer(String name) {
        this.changeName(name);
    }
    public void changeName(String name) {
        super.setName(name);
    }
    public String getName() {
        return super.getName();
    }
}