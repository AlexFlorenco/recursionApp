//
//  ButtonView.swift
//  recursionApp
//
//  Created by Alexandre Florenço on 15/04/23.
//

import SwiftUI

struct ButtonView: View {
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

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(content: "Label")
    }
}
