//
//  SecondView.swift
//  recursionApp
//
//  Created by Alexandre Florenço on 12/04/23.
//

import SwiftUI

struct SecondView: View{
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        VStack{
            Text("What is Recursion?")
                .frame(width: 800, alignment: .leading)
                .font(.custom("Apple SD Gothic Neo", size: 60))
                .fontWeight(.bold)
            
            Text("To begin with, let's define what recursion. \(Text("Recursion").bold()) is a programming technique in which a function calls itself, allowing it to solve a problem iteratively, that is, repetitively, dividing it into smaller subproblems. This allows the problem solution to be built from the solutions of smaller subproblems.")
                .frame(width: 800, height: 350)
                .font(.custom("Apple SD Gothic Neo", size: 40))
            
            RecursiveImageBrowserView()
                .padding(.top, 50)
            
            Spacer()
            
            HStack{
                Button{
                    dismiss()
                } label: {
                    ButtonView(content: "Back")
                }
                
                NavigationLink(destination: ThirdView()){
                    ButtonView(content: "Next")
                }
            }
            .padding(.bottom, 30)
            
        }
        .padding(.top, 60)
        .navigationBarBackButtonHidden(true)
        .background(BackgroundView())
    }
}

struct RecursiveImageBrowserView: View {
    @State private var opacity1: Double = 0
    @State private var opacity2: Double = 0
    @State private var opacity3: Double = 0
    @State private var opacity4: Double = 0
    
    var body: some View {
        let recursiveImageBrowser = Image("generic-dark")
            .resizable()
        
        ZStack{
            recursiveImageBrowser
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(.gray, lineWidth: 1.5))
                .opacity(opacity1)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .frame(width: 636, height: 446)
                .animation(.easeIn(duration: 0.3).delay(0), value: opacity1)
                .onAppear{
                    self.opacity1 = 1.0
                }
            
            recursiveImageBrowser
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(.gray, lineWidth: 1.5))
                .opacity(opacity2)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .frame(width: 477, height: 334.5)
                .animation(.easeIn(duration: 0.3).delay(0.3), value: opacity1)
                .onAppear{
                    self.opacity2 = 1.0
                }
            
            recursiveImageBrowser
                .overlay(
                    RoundedRectangle(cornerRadius: 6)
                        .stroke(.gray, lineWidth: 1.5))
                .opacity(opacity3)
                .clipShape(RoundedRectangle(cornerRadius: 6))
                .frame(width: 318, height: 223)
                .animation(.easeIn(duration: 0.3).delay(0.6), value: opacity1)
                .onAppear{
                    self.opacity3 = 1.0
                }
            
            recursiveImageBrowser
                .overlay(
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(.gray, lineWidth: 1.5))
                .opacity(opacity4)
                .clipShape(RoundedRectangle(cornerRadius: 4))
                .frame(width: 159, height: 111.5)
                .animation(.easeIn(duration: 0.3).delay(0.9), value: opacity1)
                .onAppear{
                    self.opacity4 = 1.0
                }
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
