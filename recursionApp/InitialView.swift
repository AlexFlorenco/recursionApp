//
//  InitialView.swift
//  recursionApp
//
//  Created by Alexandre Florenço on 12/04/23.
//

import SwiftUI

struct InitialView: View {
    var body: some View {
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
                        
                        Spacer()
                        
                    }
                    .frame(width: 800, height: 600)
                    .padding(.bottom, 200)
                }
            }
        }
}
