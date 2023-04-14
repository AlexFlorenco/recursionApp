//
//  ThirdView.swift
//  recursionApp
//
//  Created by Alexandre Florenço on 13/04/23.
//

import SwiftUI

struct ThirdView: View{
    var body: some View{
        ZStack{
            BackgroundView()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            VStack{
                VStack(alignment: .leading) {
                    Text("The Three Laws of Recursion")
                        .font(.custom("Apple SD Gothic Neo", size: 55))
                        .fontWeight(.bold)
                        .padding(.bottom, 3)
                    
                    VStack{
                        
                        Text("1. A recursive algorithm must have a base case;\n2. A recursive algorithm must change its state and move toward the base case;\n3. A recursive algorithm must call itself, recursively.\n")
                        
                        Text("First, a base case is the condition that allows the algorithm to stop recursing. A base case is typically a problem that is small enough to solve directly.\n")
                        
                        Text("A change of state means that some data that the algorithm is using is modified. Usually the data that represents our problem gets smaller in some way.\n")
                    
                        Text("The final law is that the algorithm must call itself. This is the very definition of recursion.")
                    }
                    .font(.custom("Apple SD Gothic Neo", size: 35))
                    
                }
                .padding(.top, 90)
                
                //                Spacer()
                
                VStack{
                    
                }
                
                Spacer()
            }
            .padding(.horizontal, 70)
        }
        .navigationBarBackButtonHidden(true)
    }
    
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
