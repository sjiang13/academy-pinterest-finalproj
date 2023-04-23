//
//  PhotoItem.swift
//  academy-pinterest-finalproj
//
//  Created by Sophie Jiang on 4/18/23.
//

import Foundation

struct PhotoItem: Identifiable {
    // caption
    // figure out max height - maybe just 3 options (large medium small)
    let id = UUID()
    var height: CGFloat
    var name: String
    var username: String = "username"
    var pfp: String = "cat"
    var followers: Int = 0
}
