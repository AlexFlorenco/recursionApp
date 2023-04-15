//
//  BackgroundView.swift
//  recursionApp
//
//  Created by Alexandre Florenço on 15/04/23.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        Image("background")
            .resizable()
            .ignoresSafeArea()
            .aspectRatio(contentMode: .fill)
            .offset(x: 570)
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
