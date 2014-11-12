package com.iteso.sweng.Tanda;

import java.util.ArrayList;

import static com.iteso.sweng.Tanda.Organizer.becomeAnOrganizer;

/**
 * Created by Charly on 11/11/2014.
 */
public class Registry {

    private static ArrayList<User> newUsers = new ArrayList<User>();
    private static ArrayList<Organizer> newOrganizers = new ArrayList<Organizer>();

    public static void registerNewUser (String name){
    User userToRegister = new User(name);
        if(newUsers.contains(userToRegister)){
            System.out.println("User already exists!");
        }else {
            newUsers.add(userToRegister);
            System.out.println("User created successfully");
        }
    }

    public static void createNewOrganizer (String name) {
        User userToOrganizer = new User(name);
            if(newUsers.contains(userToOrganizer)){
                if(newOrganizers.contains(becomeAnOrganizer(userToOrganizer))){
                    System.out.println("User is already an Organizer!");
                }else {
                    newOrganizers.add(becomeAnOrganizer(userToOrganizer));
                }
            }else{
                System.out.println("User not Found");
            }
    }

}
