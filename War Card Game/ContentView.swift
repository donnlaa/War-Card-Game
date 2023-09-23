//
//  ContentView.swift
//  War Card Game
//
//  Created by Ladislav Dono on 23/09/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{
            
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                
                Image("logo")
                
                HStack{
                    Image("card2")
                        .padding()
                        .shadow(radius: 15)
                    Image("card3")
                        .padding()
                        .shadow(radius: 15)
                }
                .padding()
                Image("button")
                
                HStack{
                    
                    VStack{
                        Text("Player")
                            .padding()
                        Text("0")
                    }
                    .padding()
                    
                    VStack{
                        Text("CPU")
                            .padding()
                        Text("0")
                    }
                    .padding()
                }
                .foregroundColor(.white)
                .font(.title)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
