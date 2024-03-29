//
//  ContentView.swift
//  ebook
//
//  Created by User16 on 2019/10/17.
//  Copyright © 2019 User16. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack {
                NavigationLink(destination: IntroView()){
                    Image("furi00")
                        .resizable()
                        .renderingMode(.original)
                        .scaledToFill()
                        .frame(width: 250, height: 250)
                        .clipped()
                        .clipShape(Circle())
                        .overlay(Circle().stroke(LinearGradient(gradient: Gradient(colors: [Color.white, Color(red: 1, green: 120/255, blue: 150/255)]), startPoint: .top, endPoint: .bottom), lineWidth: 4))
                }
                Text("Furihata Ai")
                    .font(.title)
                    .fontWeight(.thin)
            }
        .navigationBarTitle("About")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
