//
//  CutomButton.swift
//  AppleFrameworks
//
//  Created by Oliwia Michalak on 08/02/2022.
//

import SwiftUI

struct CustomButton: View {
    var title: String

    var body: some View {
            Text(title)
                .font(.title2)
                .fontWeight(.semibold)
                .frame(width: 250, height: 50)
                .background(Color.red)
                .foregroundColor(.white)
                .cornerRadius(10)
    }
}

struct CutomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(title: "Test title")
    }
}
