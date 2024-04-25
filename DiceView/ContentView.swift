//
//  ContentView.swift
//  DiceView
//
//  Created by bruno on 25/04/24.
//

import SwiftUI

struct ContentView: View {
    @State private var numberOfDice: Int = 1
    
    var body: some View {
        VStack {
            Text("Dice Roller")
                .font(.largeTitle.lowercaseSmallCaps())
                .foregroundStyle(.white)
            
            HStack {
                ForEach(1...numberOfDice, id: \.self) {_ in DiceView()
                        .foregroundColor(.white)
                }
            }
            
            
            HStack {
                Button("Remove Dice", systemImage: "minus.circle.fill") {
                    numberOfDice -= 1
                }
                .disabled(numberOfDice == 1)
                
                
                Button("Add Dice", systemImage: "plus.circle.fill") {
                    numberOfDice += 1
                }
                .disabled(numberOfDice == 5)
            }
            .padding()
            .labelStyle(.iconOnly)
            .font(.title)
        }
        .frame(maxWidth: .infinity, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .padding()
        .background(.appBackground)
        .tint(.white)
    }
    
    
}

#Preview {
    ContentView()
}
