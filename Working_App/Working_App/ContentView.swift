//
//  ContentView.swift
//  Working_App
//
//  Created by Imtiaz Alam on 2026/02/12.
//

import SwiftUI
var x = true;
struct ContentView: View {
    
    @State private var message = "Let Start Cal"
    @State private var third_Img_3 = "swift"
    @State private var second_Img_2 = "hand.thumbsup"
    @State private var first_Img_1 = "swift"
    
    let keys = ["1","2","3",
                "4","5","6",
                "7","8","9",
                "*","0","#"]
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: first_Img_1)
                .resizable()
                .scaledToFit()
                .foregroundStyle(Color.yellow)
                
            Text(message)
                .font(.title)
                .colorMultiply(Color.blue)
                .bold()
            
            Button("Tap Me") {
                if (x)
                {
                    message = "The \n Calculator \n Using SwiftUI"
                    first_Img_1 = third_Img_3
                    x = false;
                    
                }
                else
                {
                    message = "Give A Thumsup \nFrom M.I. Alam"
                    first_Img_1 = second_Img_2
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
