//
//  SixthView.swift
//  recursionApp
//
//  Created by Alexandre Florenço on 16/04/23.
//

import SwiftUI

struct SixthView: View {
    @Environment(\.dismiss) private var dismiss
    var body: some View{
        VStack{
            Text("Did you see how easy it is?")
                .font(.custom("Apple SD Gothic Neo", size: UIScreen.main.bounds.width * 0.05))
                .minimumScaleFactor(0.05)
                .fontWeight(.bold)
                .padding(.bottom, 1)
            
                Text("I hope you understood the recursion!\nThis is a technique that will take your knowledge of algorithm development to the next level.\nDon't hesitate to experiment and create your own recursive functions, remember that practice is the key to success in programming.")
                    .font(.custom("Apple SD Gothic Neo", size: UIScreen.main.bounds.width * 0.04))
                    .minimumScaleFactor(0.01)
                
            Text("\nI'm glad I could help you!")
                .font(.custom("Apple SD Gothic Neo", size: UIScreen.main.bounds.width * 0.05))
                .minimumScaleFactor(0.05)
                .fontWeight(.bold)
                .padding(.bottom, 1)
            
            Spacer()
            
        }
        .frame(width: UIScreen.main.bounds.width * 0.8)
        .navigationBarBackButtonHidden(true)
        .background(BackgroundView())
    }
}

struct SixthView_Previews: PreviewProvider {
    static var previews: some View {
        SixthView()
    }
}
