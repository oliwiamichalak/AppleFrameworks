//
//  FrameworkGritView.swift
//  AppleFrameworks
//
//  Created by Oliwia Michalak on 08/02/2022.
//

import SwiftUI

struct FrameworkGritView: View {
    var body: some View {
        FrameworkTitleView(name: "App Clips", image: "app-clip")
    }
}

struct FrameworkGritView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGritView()
    }
}

struct FrameworkTitleView: View {
    let name: String
    let image: String

    var body: some View {
        VStack {
            Image(image)
                .resizable()
                .frame(width: 90, height: 90)
            Text(name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }
    }
}
