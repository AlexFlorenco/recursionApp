//
//  ContentView.swift
//  recursionApp
//
//  Created by Alexandre Florenço on 11/04/23.
//

import SwiftUI

struct MainView: View {
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            ZStack{
                InitialView()
                
                Button {
                    path.append("SecondView")
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
                    if view == "SecondView"{
                        SecondView()
                    }
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
