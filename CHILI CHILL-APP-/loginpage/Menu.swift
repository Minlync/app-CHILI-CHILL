//
//  Menu.swift
//  iDine
//
//  Created by Paul Hudson on 27/06/2019.
//  Copyright © 2019 Hacking with Swift. All rights reserved.
//

import SwiftUI

struct MenuSection: Codable, Identifiable {
    var id: UUID
    var name: String
    var items: [MenuItem]
}

struct MenuItem: Codable, Hashable, Identifiable {
    var id: UUID
    var name: String
    var price: Int
    var restrictions: [String]
    var description: String

    var mainImage: String {
        name.replacingOccurrences(of: " ", with: "-").lowercased()
    }
    var randomImage: String {
        "\(mainImage)-random"
    }
    var thumbnailImage: String {
        "\(mainImage)-thumb"
    }
    var section1Image: String {
        "\(mainImage)-home"
    }
    var section2Image: String {
        "\(mainImage)-home"
    }
    #if DEBUG
    static let example = MenuItem(id: UUID(), name: "❤️❤️❤️❤️", price: 6, restrictions: ["G", "V"], description: "Sweet, fluffy, and served piping hot, our French toast is flown in fresh every day from Maple City, Canada, which is where all maple syrup in the world comes from. And if you believe that, we have some land to sell you…")
    #endif
}
