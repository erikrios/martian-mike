package com.erikriosetiawan;

/**
 * A class to create the instance of player
 */
public class Player {

    private String name;
    private int health;

    private Weapon weapon;
    private Armor armor;

    /**
     * Create player name and player health
     * 
     * @param name
     * @param health
     */
    public Player(String name, int health) {
        this.name = name;
        this.health = health;
    }

    /**
     * Set the player weapon
     * 
     * @param weapon
     */
    public void setWeapon(Weapon weapon) {
        this.weapon = weapon;
    }

    /**
     * Set the player armor
     * 
     * @param armor
     */
    public void setArmor(Armor armor) {
        this.armor = armor;
    }

    /**
     * Display the player information
     */
    public void display() {
        System.out.println("\nThe player name is " + name);
        System.out.println("The player health is " + health + " hp");
        weapon.display();
        armor.display();
    }
}