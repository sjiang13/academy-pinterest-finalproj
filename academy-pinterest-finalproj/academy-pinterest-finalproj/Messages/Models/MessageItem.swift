//
//  MessageItem.swift
//  academy-pinterest-finalproj
//
//  Created by Sophie Jiang on 4/21/23.
//

import Foundation

struct Message: Identifiable {
    let id = UUID()
    var name: String
    var messagePrev: String
    var image: String
}
