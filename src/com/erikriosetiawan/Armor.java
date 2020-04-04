package com.erikriosetiawan;

public class Armor {

    private String name;
    private int power;

    public Armor(String name, int power) {
        this.name = name;
        this.power = power;
    }

    public void display() {
        System.out.println("The armor is " + name + " and the power is " + power);
    }
}