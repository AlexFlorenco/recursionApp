//
//  ContentView.swift
//  recursionApp
//
//  Created by Alexandre Florenço on 11/04/23.
//

import SwiftUI

struct FirstView: View {
    @State private var bouncing: Bool = false
    @State private var pulsate: Bool = false
    
    var body: some View {
        VStack{
            Spacer()
            
            Text("Welcome to the Recursion Tour!")
                .multilineTextAlignment(.center)
                .font(.custom("Apple SD Gothic Neo", size: UIScreen.main.bounds.width * 0.113))
                .minimumScaleFactor(0.05)
                .fontWeight(.heavy)
            
            Text("Let's explore the concept of recursion, this very important programming technique used to solve large problems by breaking them down into smaller subproblems.")
                .multilineTextAlignment(.center)
                .font(.custom("Apple SD Gothic Neo", size: UIScreen.main.bounds.width * 0.05))
                .minimumScaleFactor(0.01)
                .fontWeight(.medium)
                .padding(.bottom, 40)
            
            NavigationLink(destination: SecondView()){
                PaginationButtonView(content: "Let's go!")
                    .scaleEffect(pulsate ? 0.8 : 1)
                    .animation(.linear(duration: 1).repeatForever().speed(1), value: pulsate)
                    .onAppear() {
                        self.pulsate.toggle()
                    }
                    
            }
            
            Spacer()
            
            HStack(alignment: .bottom){
                Image("matryoshka 1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: UIScreen.main.bounds.width * 0.35)
                    .offset(y: bouncing ? -50 : 0)
                    .animation(Animation.easeInOut(duration: 0.5)
                        .repeatForever()
                        .delay(3), value: bouncing)
                
                    .onAppear {
                        self.bouncing.toggle()
                    }
                Image("matryoshka 2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: UIScreen.main.bounds.width * 0.25)
                    .offset(y: bouncing ? -50 : 0)
                    .animation(Animation.easeInOut(duration: 0.5)
                        .repeatForever()
                        .delay(3.2), value: bouncing)
                
                    .onAppear {
                        self.bouncing.toggle()
                    }
                Image("matryoshka 3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: UIScreen.main.bounds.width * 0.2)
                    .offset(y: bouncing ? -50 : 0)
                    .animation(Animation.easeInOut(duration: 0.5)
                        .repeatForever()
                        .delay(3.4), value: bouncing)
                
                    .onAppear {
                        self.bouncing.toggle()
                    }
            }
            .frame(width: UIScreen.main.bounds.width * 0.7, height: UIScreen.main.bounds.height * 0.2, alignment: .bottom)
        }
        
        .frame(width: UIScreen.main.bounds.width * 0.8)
        .background(BackgroundView())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
