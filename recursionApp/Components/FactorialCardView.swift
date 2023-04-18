//
//  FactorialCardView.swift
//  recursionApp
//
//  Created by Alexandre Florenço on 16/04/23.
//

import SwiftUI

struct FactorialCardView: View {
    var factorial: Int
    var code: String
    var body: some View{
        ZStack{
            Rectangle()
                .foregroundColor(Color(red: 0.950, green: 0.950, blue: 0.950))
            
            Rectangle()
                .strokeBorder(lineWidth: 2)
            
            VStack {
                Text("factorial(\(factorial))")
                    .font(.title2)
                
                Divider()
                    .frame(height: 2)
                    .background(.black)
                
                Spacer()
                if code == "1 * 1" || code == "1" || code == "2 * 1" || code == "2" || code == "3 * 2" || code == "6" || code == "4 * 6" || code == "24" || code == "5 * 24" || code == "120"{
                    Text("\(code)")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundColor(.green)
                        .padding(.vertical)
                }
                else{
                    Text("\(code)")
                        .font(.title3)
                        .padding(.vertical)
                }
                
                Spacer()
            }
            
        }
        .aspectRatio(3/2, contentMode: .fit)
    }
}
