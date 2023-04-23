//
//  SearchItem.swift
//  academy-pinterest-finalproj
//
//  Created by Sophie Jiang on 4/23/23.
//

import Foundation
struct SearchItem: Identifiable {
    let id = UUID()
    var name: String
    var images: [PhotoItem]
}
