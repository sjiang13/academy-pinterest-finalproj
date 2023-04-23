//
//  HomeViewModel.swift
//  academy-pinterest-finalproj
//
//  Created by Sophie Jiang on 4/18/23.
//

import Foundation
class HomeViewModel: ObservableObject {
    @Published var left: [PhotoItem] = [PhotoItem(height: 474, name: "cat", username: "i love cats <3", pfp: "dawg", followers: 2342),  PhotoItem(height:474, name: "flower craft idea", username: "aksdljf;alkds", pfp: "jb", followers: 1230), PhotoItem(height: 375, name: "COW!!!!", username: "natureee", pfp: "landscape"), PhotoItem(height: 375, name: "room", username: "i love cats <3", pfp: "dawg"), PhotoItem(height: 375, name: "hair", username: "aksdljf;alkds", pfp: "jb"), PhotoItem(height: 474, name: "background", username: "aksdljf;alkds", pfp: "jb")]
    @Published var right: [PhotoItem] = [PhotoItem(height: 377, name: "hk", username: "aksdljf;alkds", pfp: "jb", followers: 1), PhotoItem(height: 253, name: "necklace", username: "aksdljf;alkds", pfp: "jb", followers: 12), PhotoItem(height: 474, name: "zine", username: "aksdljf;alkds", pfp: "jb"), PhotoItem(height: 474, name: "shelf", username: "aksdljf;alkds", pfp: "jb"), PhotoItem(height: 372, name: "jb", username: "justin bieber #1 fan", pfp: "jb")]
    
}

