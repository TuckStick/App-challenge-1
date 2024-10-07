//
//  ContentView.swift
//  Nothing
//
//  Created by AM Student on 9/27/24.
//
import SwiftUI

struct ContentView: View {
    @State private var isButtonVisible = true
    @State private var buttonText = "Press me"
    @State private var buttonColor = Color.blue

    var body: some View {
        ZStack {
            Image("bob")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("YOU ARE TO PRESS THE BUTTOON BELOW !!!!!!!!!!!")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding(.top, 50)
                
                Spacer()
                
                if isButtonVisible {
                    Button(action: {
                        withAnimation {
                            isButtonVisible = false
                            buttonText = "Clicked!"
                            buttonColor = Color.green
                        }
                    }) {
                        Text(buttonText)
                            .foregroundColor(.white)
                            .frame(width: 200, height: 100)
                            .background(buttonColor)
                            .cornerRadius(50)
                            .shadow(radius: 10)
                            .scaleEffect(isButtonVisible ? 1.0 : 0.5)
                            .animation(.easeInOut(duration: 0.5), value: isButtonVisible)
                    }
                }
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
