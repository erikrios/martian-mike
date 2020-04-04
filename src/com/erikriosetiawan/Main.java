package com.erikriosetiawan;

public class Main {

    public static void main(String[] args) {

        // Create the new instance of Player
        Player army = new Player("Master Army", 100);
        // Create the new instance of Weapon and Armor
        Weapon armyWeapon = new Weapon("Snipper", 980);
        Armor armyArmor = new Armor("Armor Branch", 550);
        // Set the army weapon and armor
        army.setWeapon(armyWeapon);
        army.setArmor(armyArmor);

        // Create the new instance of Player
        Player police = new Player("Super Police", 100);
        // Set the police weapon and armor
        police.setWeapon(new Weapon("Glock 19", 450));
        police.setArmor(new Armor("Body Armor", 580));

        // Display all player information
        army.display();
        police.display();
    }
}