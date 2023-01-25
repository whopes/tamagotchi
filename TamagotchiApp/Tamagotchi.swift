//
//  Tamagotchi.swift
//  TamagotchiApp
//
//  Created by Hopes, William (AMM) on 24/01/2023.
//

import Foundation


struct Tamagotchi {
    var healthMeter = 10
    var happiness = 0
    var hunger = 0
    var age = 0
    var sleep = 0
    var needsCleaning = false
    
    func displayStats() -> String {
        return ("""
            Health: \(healthMeter)
            Mood: \(happiness)
            Hunger: \(hunger)
            Age: \(age)
            Sleep Level: \(sleep)
            Needs Cleaning: \(needsCleaning)
            """)
            
        }
    
    mutating func feedMeal() {
        self.hunger -= 3
    }
    
    mutating func feedSnack() {
        self.hunger -= 1
    }
    
    mutating func playGame() {
        var left: Bool
        var right: Bool
        for turns in 0...4 {
            let num = Int.random(in: 1...2)
            switch num {
                case 1:
                    left = true
                    break
                case 2:
                    right = true
                    break
                default:
                    print("0")
            }
        }
    }
}
