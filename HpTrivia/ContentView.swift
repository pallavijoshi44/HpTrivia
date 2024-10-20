//
//  ContentView.swift
//  HpTrivia
//
//  Created by Pallavi Joshi on 20/10/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var scalePlayButton = false
    @State private var moveBackgroundImage = true
    
    var body: some View {
        GeometryReader { geo in
            ZStack {
                Image("hogwarts")
                    .resizable()
                    .scaledToFill()
                    .frame(
                        width:  geo.size.width * 3,
                        height: geo.size.height
                        
                    )
                    .padding(.top, 3)
                    .offset(x: moveBackgroundImage ? geo.size.width/1.1 : -geo.size.width/1.1)
                    .onAppear() {
                        withAnimation(
                            .linear(duration: 60)
                            .repeatForever()
                            ) {
                                moveBackgroundImage.toggle()
                            }
                    }
                
                VStack {
                    
                    VStack {
                        Image(systemName: "bolt.fill")
                            .font(.largeTitle)
                            .imageScale(.large)
                        
                        Text("HP")
                            .font(.custom(Constants.HPfont, size: 70))
                        
                        Text("Trivia")
                            .font(.custom(Constants.HPfont, size: 60))
                        
                    }
                    .padding(.top, 70)
                    
                    Spacer()
                    
                    VStack {
                        Text("Recent Scores")
                            .font(.title2)
                        Text("200")
                        Text("130")
                        Text("140")
                    }
                    .font(.title3)
                    .foregroundColor(.white)
                    .padding(.horizontal)
                    .background(.black.opacity(0.7))
                    .cornerRadius(15)
                    
                    Spacer()
                    
                    HStack {
                        Spacer()
                        Image(systemName: "info.circle.fill")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .shadow(radius: 5)
                        
                        Spacer()
                        
                        Button(
                            action: {
                                
                            },
                            label: {
                                Text("Play")
                                    .font(.largeTitle)
                                    .foregroundColor(.white)
                                    .padding(.vertical, 7)
                                    .padding(.horizontal, 50)
                                    .background(.brown)
                                    .cornerRadius(7)
                                    .shadow(radius: 5)
                                    .scaleEffect(scalePlayButton ? 1.2 : 1)
                                    .onAppear {
                                        withAnimation(
                                            .easeInOut(duration: 1.3)
                                            .repeatForever()) {
                                                scalePlayButton.toggle()
                                            }
                                    }
                                
                            }
                            
                        )
                        
                        
                        Spacer()
                        
                        Button(
                            action: {
                                
                            },
                            label: {
                                Image(systemName: "gearshape.fill")
                                    .font(.largeTitle)
                                    .foregroundColor(.white)
                                    .shadow(radius: 5)
                            })
                        Spacer()
                        
                    }
                    .frame(width: geo.size.width)
                    
                    Spacer()
                    
                }
                
            }
            .frame(width: geo.size.width, height: geo.size.height)
            .padding(.top, 3)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
