//
//  ButtonView.swift
//  recursionApp
//
//  Created by Alexandre Florenço on 15/04/23.
//

import SwiftUI

struct PaginationButtonView: View {
    var content: String
    var body: some View {
        Text(content)
            .font(.custom("Apple SD Gothic Neo", size: 45))
            .fontWeight(.black)
            .foregroundColor(.white)
            .frame(width: 265.0, height: 90)
            .background(Color(red: 0.527, green: 0.841, blue: 0.408))
            .cornerRadius(13)
    }
}

struct StepButtonView: View {
    var iconButton: String
    var color: Color
    
    var body: some View{
        Image(systemName: iconButton)
            .foregroundColor(.white)
            .padding(.horizontal)
            .padding(.vertical, 5)
            .background(color)
            .cornerRadius(40)
    }
}

struct ButtonViews_Previews: PreviewProvider {
    static var previews: some View {
        PaginationButtonView(content: "Label")
    }
}
