//
//  SearchModel.swift
//  academy-pinterest-finalproj
//
//  Created by Sophie Jiang on 4/23/23.
//

import Foundation

class SearchModel : ObservableObject {
    @Published var searchList: [SearchItem] = [
        SearchItem(name: "Hair color inspo", images: [PhotoItem(height: 474, name: "hair1"), PhotoItem(height: 474, name: "hair2"), PhotoItem(height: 473, name: "hair3"), PhotoItem(height: 474, name: "hair4")]),
        SearchItem(name: "Swaggy outfits", images: [PhotoItem(height: 474, name: "outfit"), PhotoItem(height: 474, name: "outfit1"), PhotoItem(height: 473, name: "outfit2"), PhotoItem(height: 474, name: "outfit3")]),
        SearchItem(name: "Profile photos", images: [PhotoItem(height: 474, name: "pfp1"), PhotoItem(height: 474, name: "pfp2"), PhotoItem(height: 473, name: "pfp3"), PhotoItem(height: 474, name: "pfp4")])
        
    
    ]
}
