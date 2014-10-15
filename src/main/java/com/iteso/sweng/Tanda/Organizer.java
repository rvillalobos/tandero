package com.iteso.sweng.Tanda;

/**
 * Created by Alejandro on 15/10/2014.
 */
public class Organizer {
    private String name;

    public Organizer(String name) {
        this.changeName(name);
    }

    public void changeName(String name) {
        this.name = name;
    }

    public String getName() {
        return this.name;
    }
}
