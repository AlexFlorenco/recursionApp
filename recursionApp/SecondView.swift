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
        VStack {
            Text("To begin with, let's define what recursion is.")
                .font(.custom("Apple SD Gothic Neo", size: UIScreen.main.bounds.width * 0.05))
                .minimumScaleFactor(0.05)
                .fontWeight(.bold)
                .padding(.bottom, 1)
            
            Text("Recursion is like a loop, but instead of repeating a series of statements, it calls itself inside itself, allowing it to solve a problem iteratively, that is, repetitively.\n\nIt is useful when you need to repeat a certain process several times, as it allows the problem solution to be built from the solutions of smaller subproblems.")
//                .frame(width: 800, height: 350)
                .font(.custom("Apple SD Gothic Neo", size: UIScreen.main.bounds.width * 0.04))
                .minimumScaleFactor(0.01)
            Spacer()
            RecursiveImageBrowserView()
//                .frame(height: UIScreen.main.bounds.width * 0.45)
//                .scaleEffect(UIScreen.main.bounds.width * 0.0010)

            Spacer()
            
            HStack{
                Button{
                    dismiss()
                } label: {
                    PaginationButtonView(content: "Back")
                        .scaleEffect(0.8)
                }
                
                NavigationLink(destination: ThirdView()){
                    PaginationButtonView(content: "Next")
                        .scaleEffect(0.8)
                }
            }
        }
        .frame(width: UIScreen.main.bounds.width * 0.8)
//        .padding(.top, 60)
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
                .aspectRatio(contentMode: .fit)
//                .frame(width: UIScreen.main.bounds.width * 0.6, height: UIScreen.main.bounds.width * 0.3)

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
                .scaledToFit()
                .scaleEffect(0.7)
//                .frame(width: UIScreen.main.bounds.width * 0.6, height: UIScreen.main.bounds.width * 0.3)
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
                .scaledToFit()
                .scaleEffect(0.4)
//                .scaledToFit()

//                .frame(width: UIScreen.main.bounds.width * 0.6, height: UIScreen.main.bounds.width * 0.3)
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
                .scaledToFit()
                .scaleEffect(0.1)

//                .frame(width: UIScreen.main.bounds.width * 0.6, height: UIScreen.main.bounds.width * 0.3)
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
