//
//  SecondView.swift
//  recursionApp
//
//  Created by Alexandre Florenço on 12/04/23.
//

import SwiftUI

struct SecondView: View{
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            ZStack{
                BackgroundView()
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                
                VStack{
                    VStack(alignment: .leading) {
                        Text("What is recursion?")
                            .font(.custom("Apple SD Gothic Neo", size: 55))
                            .fontWeight(.bold)
                        
                        (Text("To begin with, let's define what recursion is.\n") + Text("Recursion").bold() + Text(" is a programming technique in which a function calls itself, allowing it to solve a problem iteratively, that is, repetitively, dividing it into smaller subproblems. This allows the problem solution to be built from the solutions of smaller subproblems."))
                            .font(.custom("Apple SD Gothic Neo", size: 35))
                        
                    }
//                    .padding(.top, 90)
                    
//                                    Spacer()
                    
//                    VStack{
                        RecursiveImageBrowserView()
                        
                        Button {
                            path.append("ThirdView")
                        } label: {
                            Text("Let's go!")
                                .font(.custom("Apple SD Gothic Neo", size: 45))
                                .fontWeight(.black)
                                .foregroundColor(.white)
                                .frame(width: 245.0, height: 80)
                        }
                        .background(Color(red: 0.527, green: 0.841, blue: 0.408))
                        .cornerRadius(10)
                        .padding(.top, 200)
                        .navigationDestination(for: String.self) { view in
                            if view == "ThirdView"{
                                ThirdView()
                            }
                        }
//                    }
//                    .padding(.top, 40)
                }
                .padding(.horizontal, 70)
            }
            .navigationBarBackButtonHidden(true)
        }
        
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

struct BackgroundView: View {
    var body: some View {
        Image("background")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .rotationEffect(Angle(degrees: 180))
            .offset(x: -550)
        //            .ignoresSafeArea()
    }
}



struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
