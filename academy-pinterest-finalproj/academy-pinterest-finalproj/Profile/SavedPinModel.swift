//
//  SavedPinModel.swift
//  academy-pinterest-finalproj
//
//  Created by Sophie Jiang on 4/22/23.
//

import Foundation


struct Saved: Identifiable {
    let id = UUID()
    var photoName: String
    var savedTitle: String
    var pinNumber: Int
    var time: String
}

class SavedList : ObservableObject {

    @Published var savedList: [Saved] = [
                                    Saved(photoName: "room", savedTitle: "room inspo", pinNumber: 4, time: "10 mo"),
                                    Saved(photoName: "shelf", savedTitle: "decor", pinNumber: 29, time: "2 yr"),
                                    Saved(photoName: "hair", savedTitle: "hairstyles", pinNumber: 4, time: "3 yr")
                                        ]
    @Published var rightsavedList: [Saved] = [
        Saved(photoName: "cat2", savedTitle: "cat pics2!!!", pinNumber: 28, time: "1 mo"),
        Saved(photoName: "cat", savedTitle: "cat pics!!", pinNumber: 600, time: "3 mo"),
        Saved(photoName: "background", savedTitle: "backgrounds", pinNumber: 19, time: "11 mo")
    ]
}
