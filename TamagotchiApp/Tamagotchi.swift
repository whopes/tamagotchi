//
//  Tamagotchi.swift
//  TamagotchiApp
//
//  Created by Hopes, William (AMM) on 24/01/2023.
//

import Foundation


struct Tamagotchi {
    var healthMeter = 10
    var happiness = 5
    var hunger = 10
    var age = 0
    var sleep = 0
    
    func displayStats() -> String {
        return ("""
            Health: \(healthMeter)
            Mood: \(happiness)
            Hunger: \(hunger)
            Age: \(age)
            Sleep Level: \(sleep)
            """)
            
        }
    
    mutating func feedMeal() {
        if self.hunger > 2 {
            self.hunger -= 3
        } else {
            print("Tamagotchi isn't hungry enough to eat a meal.")
        }
    }
    
    mutating func feedSnack() {
        if self.hunger > 0 {
            self.hunger -= 1
        } else {
            print("Tamagotchi isn't hungry.")
        }
    }
    
    mutating func playGame() {
        
    }
}
