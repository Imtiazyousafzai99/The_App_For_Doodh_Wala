//
//  ContentView.swift
//  Working_App
//
//  Created by Imtiaz Alam on 2026/02/12.
//

import SwiftUI
var x = true;
struct ContentView: View {
    
    @State private var message = "Chi San"

    var body: some View {
        VStack(spacing: 20) {
            
            Text(message)
                .font(.title)
                .bold()
            
            Button("Tap Me") {
                if (x)
                {
                    message = "Button was tapped!"
                    x = false;
                }
                else
                {
                    message = "Tap me"
                    x = true;
                    
                }
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(12)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
