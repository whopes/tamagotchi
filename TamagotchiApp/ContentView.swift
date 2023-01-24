//
//  ContentView.swift
//  TamagotchiApp
//
//  Created by Hopes, William (AMM) on 24/01/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var tamagotchi = Tamagotchi()
    var timeElapsed = 0
    
    let hungerTimer = Timer.publish(every: 30, on: .main, in: .common).autoconnect()
    
    let ageTimer = Timer.publish(every: 60, on: .main, in: .common).autoconnect()
    
    var isHungryForMeal: Bool {
        return tamagotchi.hunger > 2 ? true : false
    }
    var isHungryForSnack: Bool {
        return tamagotchi.hunger > 0 ? true : false
    }
    
    var body: some View {
        VStack {
            Text("\(tamagotchi.displayStats())")
                .onReceive(hungerTimer) { _ in
                    tamagotchi.hunger += 1
                }
                .onReceive(ageTimer) { _ in
                    tamagotchi.age += 1
                }

            
            Button("Feed Tamagotchi", action: {
                tamagotchi.feedMeal()
            })
                .disabled(!isHungryForMeal)
            
            Button("Feed Snack", action: {
                tamagotchi.feedSnack()
            })
                .disabled(!isHungryForSnack)
            
            //Button()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
