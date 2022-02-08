//
//  FrameworkGridViewModel.swift
//  AppleFrameworks
//
//  Created by Oliwia Michalak on 08/02/2022.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {

    var selectedFramework: Framework? {
        didSet {
            isShowingDetailsView = true
        }
    }

    @Published var isShowingDetailsView = false

}
