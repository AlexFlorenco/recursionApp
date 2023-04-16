//
//  ContentView.swift
//  recursionApp
//
//  Created by Alexandre Florenço on 11/04/23.
//

import SwiftUI

struct FirstView: View {
    @State private var bouncing: Bool = false
    
    var body: some View {
        VStack{
            Spacer()
            
            Text("Welcome to the Recursion Tour!")
                .frame(width: 800, height: 200)
                .font(.custom("Apple SD Gothic Neo", size: 70))
                .fontWeight(.heavy)
            
            Text("Let's explore the concept of recursion, which is a very important programming technique used to solve problems that can be broken down into smaller subproblems.")
                .frame(width: 800, height: 300, alignment: .center)
                .multilineTextAlignment(.center)
                .font(.custom("Apple SD Gothic Neo", size: 50))
                .fontWeight(.medium)
                .padding(.bottom, 40)
            
            NavigationLink(destination: SecondView()){
                PaginationButtonView(content: "Let's go!")
            }
            
            HStack(alignment: .bottom){
                Image("matryoshka 1")
                    .frame(maxHeight: 450, alignment: .bottom)
                    .offset(y: bouncing ? -50 : 0)
                    .animation(Animation.easeInOut(duration: 0.5)
                        .repeatForever()
                        .delay(3), value: bouncing)
                
                    .onAppear {
                        self.bouncing.toggle()
                    }
                Image("matryoshka 2")
                    .frame(maxHeight: 450, alignment: .bottom)
                    .offset(y: bouncing ? -50 : 0)
                    .animation(Animation.easeInOut(duration: 0.5)
                        .repeatForever()
                        .delay(3.2), value: bouncing)
                
                    .onAppear {
                        self.bouncing.toggle()
                    }
                Image("matryoshka 3")
                    .frame(maxHeight: 450, alignment: .bottom)
                    .offset(y: bouncing ? -50 : 0)
                    .animation(Animation.easeInOut(duration: 0.5)
                        .repeatForever()
                        .delay(3.4), value: bouncing)
                
                    .onAppear {
                        self.bouncing.toggle()
                    }
            }
            .frame(width: 500)
            
        }
        .background(BackgroundView())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
