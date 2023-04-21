//
//  MessageViewModel.swift
//  academy-pinterest-finalproj
//
//  Created by Sophie Jiang on 4/21/23.
//

import Foundation
private var contactMessage = "Say hello 😀"
class MessageViewModel: ObservableObject{
    
    @Published var messages: [Message] = [
        Message(name: "Pinterest", messagePrev: "Send a Pin!", image: "hair")
    ]
    @Published var contacts: [Message] = [
        Message(name: "Bompu", messagePrev: contactMessage, image: "necklace"),
        Message(name: "maia", messagePrev: contactMessage, image: "hk"),
        Message(name: "zoe", messagePrev: contactMessage, image: "necklace")
    ]
}
