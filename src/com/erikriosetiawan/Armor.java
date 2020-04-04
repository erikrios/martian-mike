package com.erikriosetiawan;

public class Armor {

    private String name;
    private int power;

    /**
     * Set the armor name and armor power
     * @param name
     * @param power
     */
    public Armor(String name, int power) {
        this.name = name;
        this.power = power;
    }

    /**
     * Display the armor information
     */
    public void display() {
        System.out.println("The armor is " + name + " and the power is " + power);
    }
}