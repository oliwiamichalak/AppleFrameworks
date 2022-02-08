//
//  Framework.swift
//  AppleFrameworks
//
//  Created by Oliwia Michalak on 08/02/2022.
//

import Foundation

struct Framework: Hashable, Identifiable {
    var id = UUID()
    let name: String
    let imageName: String
    let urlString: String
    let description: String
}
