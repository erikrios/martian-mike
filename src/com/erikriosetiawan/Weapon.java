package com.erikriosetiawan;

public class Weapon {

    private String name;
    private int power;

    /**
     * Set the weapon name and the weapon power
     * 
     * @param name
     * @param power
     */
    public Weapon(String name, int power) {
        this.name = name;
        this.power = power;
    }

    /**
     * Display the weapon information
     */
    public void display() {
        System.out.println("The weapon is " + name + " and the power are " + power);
    }
}