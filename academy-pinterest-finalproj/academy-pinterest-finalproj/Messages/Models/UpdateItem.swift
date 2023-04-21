//
//  UpdateModel.swift
//  academy-pinterest-finalproj
//
//  Created by Sophie Jiang on 4/20/23.
//

import Foundation

struct Update: Identifiable {
    let id = UUID()
    var number: Int
    var time: String
    var photos: [PhotoItem]
}

