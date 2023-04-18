//
//  FifthView.swift
//  recursionApp
//
//  Created by Alexandre Florenço on 16/04/23.
//

import SwiftUI

struct FourthView: View {
    @Environment(\.dismiss) private var dismiss
    var body: some View{
        VStack{
            Text("The Recursive Algorithm")
                .font(.custom("Apple SD Gothic Neo", size: UIScreen.main.bounds.width * 0.05))
                .minimumScaleFactor(0.05)
                .fontWeight(.bold)
                .padding(.bottom, 1)
            
            Text("This concept gets simpler when we see how it works in practice.\nWe will use as an example the factorial calculus, which is the product of a number by its predecessors up to zero.")
                .font(.custom("Apple SD Gothic Neo", size: UIScreen.main.bounds.width * 0.04))
                .minimumScaleFactor(0.01)
            
            Image("codelight")
                .resizable()
                .aspectRatio(contentMode: .fit)
            //                .frame(width: 1200)
            
            Text("Above we see the construction of the factorial function recursively.\n\nSounds a little confusing?\nDon't worry, on the next page we'll go through each step of how this algorithm works.")
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
                
                NavigationLink(destination: FifthView()){
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

struct FourthView_Previews: PreviewProvider {
    static var previews: some View {
        FourthView()
    }
}
