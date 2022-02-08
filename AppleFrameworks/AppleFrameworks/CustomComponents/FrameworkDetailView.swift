//
//  FrameworkDetailView.swift
//  AppleFrameworks
//
//  Created by Oliwia Michalak on 08/02/2022.
//

import SwiftUI

struct FrameworkDetailView: View {

    var framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false

    var body: some View {
        VStack {
            DismissButton(isShowingDetailView: $isShowingDetailView)

            Spacer()

            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()

            Spacer()

            Button {
                isShowingSafariView = true
            } label: {
                CustomButton(title: "Learn more")
            }
        }
        .fullScreenCover(isPresented: $isShowingSafariView) {
            SafariView(url: URL(string: framework.urlString) ?? URL(string:"www.apple.com")!)
        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
    }
}
