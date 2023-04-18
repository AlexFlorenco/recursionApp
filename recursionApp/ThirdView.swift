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
                .font(.custom("Apple SD Gothic Neo", size: UIScreen.main.bounds.width * 0.05))
                .minimumScaleFactor(0.05)
                .fontWeight(.bold)
                .padding(.bottom, 1)
            
            Text("\(Text("1. A recursive algorithm must have a base case;").bold())\nA base case is the condition that allows the algorithm to stop the recursion. It is the point where the problem is small enough to be solved directly.\n\n\(Text("2. A recursive algorithm must change its state and move toward the base case;").bold())\nA change of state means that some data that the algorithm is using is modified.Typically, the data representing our problem gets smaller in some way.\n\n\(Text("3. A recursive algorithm must call itself, recursively.").bold())\nThe last law is that the algorithm must call itself. This is the very definition of recursion.")
                .font(.custom("Apple SD Gothic Neo", size: UIScreen.main.bounds.width * 0.04))
                .minimumScaleFactor(0.01)
            
            Spacer()
            
            HStack{
                Button{
                    dismiss()
                } label: {
                    PaginationButtonView(content: "Back")
                        .scaleEffect(0.8)
                }
                
                NavigationLink(destination: FourthView()){
                    PaginationButtonView(content: "Next")
                        .scaleEffect(0.8)
                }
            }
        }
        .frame(width: UIScreen.main.bounds.width * 0.8)
        .navigationBarBackButtonHidden(true)
        .background(BackgroundView())
    }
    
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
