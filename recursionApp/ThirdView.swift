//
//  ThirdView.swift
//  recursionApp
//
//  Created by Alexandre Florenço on 13/04/23.
//

import SwiftUI

struct ThirdView: View{
    @Environment(\.dismiss) private var dismiss
    var body: some View{
        VStack{
            Text("The Three Laws of Recursion")
                .frame(width: 800, alignment: .leading)
                .padding(.top, 60)
                .padding(.bottom, 30)
                .font(.custom("Apple SD Gothic Neo", size: 60))
                .fontWeight(.bold)
            
            Group{
                Text("1. A recursive algorithm must have a base case;\n2. A recursive algorithm must change its state and move toward the base case;\n3. A recursive algorithm must call itself, recursively.\n")
                
                Text("First, a base case is the condition that allows the algorithm to stop recursing. A base case is typically a problem that is small enough to solve directly.\n")
                
                Text("A change of state means that some data that the algorithm is using is modified. Usually the data that represents our problem gets smaller in some way.\n")
                
                Text("The final law is that the algorithm must call itself. This is the very definition of recursion.")
            }
            .frame(width: 800)
            .font(.custom("Apple SD Gothic Neo", size: 40))
            
            Spacer()
            
            HStack{
                Button{
                    dismiss()
                } label: {
                    ButtonView(content: "Back")
                }
                
                NavigationLink(destination: FourthView()){
                    ButtonView(content: "Next")
                }
            }
            .padding(.bottom, 30)
            
        }
        .navigationBarBackButtonHidden(true)
        .background(BackgroundView())
    }
    
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
