//
//  HomeViewModel.swift
//  academy-pinterest-finalproj
//
//  Created by Sophie Jiang on 4/18/23.
//

import Foundation
class HomeViewModel: ObservableObject {
    @Published var left: [PhotoItem] = [PhotoItem(height: 474, name: "cat"),  PhotoItem(height: 375, name: "COW!!!!"), PhotoItem(height: 375, name: "room"), PhotoItem(height: 375, name: "hair")]
    @Published var right: [PhotoItem] = [PhotoItem(height: 253, name: "necklace"), PhotoItem(height: 377, name: "hk"),PhotoItem(height: 474, name: "zine")]
    
}
