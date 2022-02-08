//
//  FrameworkGritView.swift
//  AppleFrameworks
//
//  Created by Oliwia Michalak on 08/02/2022.
//

import SwiftUI

struct FrameworkGritView: View {

    @StateObject var viewModel = FrameworkGridViewModel()

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailsView) {
                FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework,isShowingDetailView: $viewModel.isShowingDetailsView)
            }
        }
    }
}

struct FrameworkGritView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGritView()
            .preferredColorScheme(.dark)
    }
}
