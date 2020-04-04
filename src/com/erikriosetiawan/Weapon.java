package com.erikriosetiawan;

public class Weapon {

    private String name;
    private int power;

    public Weapon(String name, int power) {
        this.name = name;
        this.power = power;
    }

    public void display() {
        System.out.println("The weapon is " + name + " and the power are " + power);
    }
}