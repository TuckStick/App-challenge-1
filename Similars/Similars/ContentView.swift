//
//  ContentView.swift
//  Similars
//
//  Created by AM Student on 9/27/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showingPopover = false
    @State private var showingPopoverA = false
    @State private var showingPopoverAB = false
    @State private var showingPopoverABC = false
    @State private var randomNum = Int.random(in: 1...100)
    
    var body: some View {
        ZStack {
            Image("was")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Random Number: \(randomNum)")
                    .padding()
                    .background(Color.orange)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                
                Button(action: {
                    randomNum = Int.random(in: 1...100)
                }) {
                    Text("Generate Random Number")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                    
                }
                
                Button("Tap me") {
                    showingPopover = true
                }
                .padding()
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(10)
                .popover(isPresented: $showingPopover) {
                    VStack {
                        Text("Button was tapped")
                        
                        ZStack {
                            Image("smile")
                                .resizable()
                                .scaledToFit()
                                .edgesIgnoringSafeArea(.all)
                            
                            Button("Tap me again") {
                                showingPopoverA = true
                            }
                            .padding()
                            .background(Color.orange)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .popover(isPresented: $showingPopoverA) {
                                VStack {
                                    Text("Do it again")
                                    
                                    ZStack {
                                        Image("show")
                                            .resizable()
                                            .scaledToFit()
                                            .edgesIgnoringSafeArea(.all)
                                        
                                        Button("Tap me") {
                                            showingPopoverAB = true
                                        }
                                        .padding()
                                        .background(Color.red)
                                        .foregroundColor(.white)
                                        .cornerRadius(10)
                                        .popover(isPresented: $showingPopoverAB) {
                                            VStack {
                                                Text("One more time")
                                                
                                                ZStack {
                                                    Image("morty")
                                                        .resizable()
                                                        .scaledToFit()
                                                        .edgesIgnoringSafeArea(.all)
                                                    
                                                    Button("DO IT") {
                                                        showingPopoverABC = true
                                                    }
                                                    .padding()
                                                    .background(Color.purple)
                                                    .foregroundColor(.white)
                                                    .cornerRadius(10)
                                                    .popover(
                                                        isPresented: $showingPopoverABC
                                                    ) {
                                                        Text("Swipe down to go back")
                                                            .padding()
                                                            .background(Color.yellow)
                                                            .foregroundColor(.black)
                                                            .cornerRadius(10)
                                                        Image("rick")
                                                            .resizable()
                                                            .scaledToFit()
                                                            .edgesIgnoringSafeArea(.all)
                                                        
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                                .padding()
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
