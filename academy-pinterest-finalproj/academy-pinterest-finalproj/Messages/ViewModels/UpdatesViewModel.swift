//
//  UpdatesData.swift
//  academy-pinterest-finalproj
//
//  Created by Sophie Jiang on 4/20/23.
//

import Foundation

class UpdatesViewModel: ObservableObject {
    @Published var updatesList: [Update] = [
                                            Update(number: 2, time: "d", photos: [PhotoItem(height: 474, name: "cat"),  PhotoItem(height: 375, name: "COW!!!!"), PhotoItem(height: 375, name: "room"), PhotoItem(height: 375, name: "hair")]),
                                            Update(number: 2, time: "d", photos: [PhotoItem(height: 474, name: "cat"),  PhotoItem(height: 375, name: "COW!!!!"), PhotoItem(height: 375, name: "room"), PhotoItem(height: 375, name: "hair")]),
                                            Update(number: 2, time: "d", photos: [PhotoItem(height: 474, name: "cat"),  PhotoItem(height: 375, name: "COW!!!!"), PhotoItem(height: 375, name: "room"), PhotoItem(height: 375, name: "hair")]),
                                            Update(number: 2, time: "d", photos: [PhotoItem(height: 474, name: "cat"),  PhotoItem(height: 375, name: "COW!!!!"), PhotoItem(height: 375, name: "room"), PhotoItem(height: 375, name: "hair")])
                                                  ]
}


