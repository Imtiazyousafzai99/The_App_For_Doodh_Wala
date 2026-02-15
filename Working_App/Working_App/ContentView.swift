//
//  ContentView.swift
//  Working_App
//
//  Created by Imtiaz Alam on 2026/02/12.


import SwiftUI

struct ContentView: View {
    @State var first_Img_1 = "swift"
    @State var message = "Let Start Cal"
    @State var x = true;

func handleKey(_ key: Int) {
    switch key {
    case 1:
        message = "The \n Calculator \n Using SwiftUI"
        break;
    case 2:
        message = "Give A Thumsup \nFrom M.I. Alam"
        break;
    default:
        first_Img_1 = "Default"
        break;
    }
}
    @State private var third_Img_3 = "swift"
    @State private var second_Img_2 = "hand.thumbsup"

    
    let keys = ["1","2","3",
                "4","5","6",
                "7","8","9",
                "*","0","#"]
    let key = 10;
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
        
            Button("Let's Go!!!") {
                if (x)
                {
                    handleKey(1)
                    first_Img_1 = third_Img_3
                    x = false;
                }
                else
                {
                    handleKey(2)
                    first_Img_1 = second_Img_2
                    x = true;
                }
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(12)
            Button("Reset!!!") {
                
                handleKey(1)
                first_Img_1 = "Let Start Cal"
                first_Img_1 = third_Img_3
                x = false;
                
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

