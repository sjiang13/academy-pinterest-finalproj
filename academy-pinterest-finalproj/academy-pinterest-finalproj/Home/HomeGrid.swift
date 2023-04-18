//
//  HomeGrid.swift
//  academy-pinterest-finalproj
//
//  Created by Sophie Jiang on 4/18/23.
//

import Foundation
class HomeViewModel: ObservableObject {
    @Published var left: [PhotoItem] = [PhotoItem(height: 100, name: "cat"), PhotoItem(height: 50, name: "hair")]
    @Published var right: [PhotoItem] = [PhotoItem(height: 50, name: "necklace"), PhotoItem(height: 30, name: "hk"),PhotoItem(height: 50, name: "zine")]
}
