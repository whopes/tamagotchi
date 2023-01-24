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
    
        
    
    var body: some View {
        VStack {
            Text("\(tamagotchi.displayStats())")
                .padding()
            
            Button("Feed Tamagotchi", action: {
                tamagotchi.feedMeal()
            })
            Button("Play Game", action: {
                tamagotchi.feedSnack()
            })
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
