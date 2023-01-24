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
    var hunger = 0
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
        self.hunger -= 3
    }
    
    mutating func feedSnack() {
        self.hunger -= 1
    }
    
    mutating func playGame() {
        
    }
}
