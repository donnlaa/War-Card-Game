//
//  ContentView.swift
//  War Card Game
//
//  Created by Ladislav Dono on 23/09/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack{
            
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                
                Image("logo")
                
                HStack{
                    Image(playerCard)
                        .padding()
                        .shadow(radius: 15)
                    Image(cpuCard)
                        .padding()
                        .shadow(radius: 15)
                }
                .padding()
                
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }

                
                HStack{
                    
                    VStack{
                        Text("Player")
                            .padding()
                        Text(String(playerScore))
                    }
                    .padding()
                    
                    VStack{
                        Text("CPU")
                            .padding()
                        Text(String(cpuScore))
                    }
                    .padding()
                }
                .foregroundColor(.white)
                .font(.title)
            }
        }
    }
    
    func deal(){
        var playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
        var cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        
        if playerCardValue > cpuCardValue {
            playerScore += 1
        }
        else if playerCardValue < cpuCardValue {
            cpuScore += 1
        }
        else {print("remiza")}
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
