//
//  ContentView.swift
//  recursionApp
//
//  Created by Alexandre Florenço on 11/04/23.
//

import SwiftUI

struct ContentView: View {
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            ZStack{
                Image("background")
                    .resizable()
                    .ignoresSafeArea()
                    .aspectRatio(contentMode: .fill)
                    .offset(x: 570)
                
                ZStack{
                    VStack{
                        Spacer()
                        
                        Image("matryoshka")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 400)
                    }
                    
                    VStack{
                        Text("Welcome to the Recursion Tour!")
                            .font(.custom("Apple SD Gothic Neo", size: 65))
                            .padding(.bottom)
                            .fontWeight(.bold)
                        
                        Text("Let's explore the concept of recursion, which is a very important programming technique used to solve problems that can be broken down into smaller subproblems.")
                            .font(.custom("Apple SD Gothic Neo", size: 45))
                            .fontWeight(.medium)
                            .multilineTextAlignment(.center)
                        
                        
                        Button {
                            path.append("NewView")
                        } label: {
                            Text("Let's go!")
                                .font(.custom("Apple SD Gothic Neo", size: 45))
                                .fontWeight(.black)
                                .foregroundColor(.white)
                                .frame(width: 245.0, height: 80)
                        }
                        .background(Color(red: 0.527, green: 0.841, blue: 0.408))
                        .cornerRadius(10)
                        .padding(.top)
                        .navigationDestination(for: String.self) { view in
                            if view == "NewView" {
                                SegundaView()
                            }
                        }
                    }
                    .frame(width: 800, height: 600)
                    .padding(.bottom, 200)
                }
            }
        }
    }
}

struct SegundaView: View{
    var body: some View{
        ZStack{
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .rotationEffect(Angle(degrees: 180))
                .offset(x: -550)
                .ignoresSafeArea()
            
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
