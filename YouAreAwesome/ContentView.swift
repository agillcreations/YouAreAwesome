//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Arismendy Gill on 2/25/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var message = "I Am A Programmer!"
    
    var body: some View {
        
        VStack {
            
            Spacer() // Takes up half of the available space.
            
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
                .frame(width: 200, height: 200)
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
                .foregroundStyle(.black)
            
            Spacer()
            
            HStack {
                Button("Awesome") {
                    message = "Awesome!"
                }

                
                Button("Great") {
                    message = "Great!"
                }
            } // Modifiers apply to all the button in the HStack.
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.orange)
            
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
