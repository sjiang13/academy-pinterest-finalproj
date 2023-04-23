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
        Message(name: "Pinterest", messagePrev: "Send a Pin!", image: "pinterest")
    ]
    @Published var contacts: [Message] = [
        Message(name: "vivian", messagePrev: contactMessage, image: "girl"),
        Message(name: "kathleen", messagePrev: contactMessage, image: "hair"),
        Message(name: "Sophie", messagePrev: contactMessage, image: "flower"),
        Message(name: "SLKDJLKFJ", messagePrev: contactMessage, image: "cloth"),
        Message(name: "Caroline", messagePrev: contactMessage, image: "room2"),
        Message(name: "pizza", messagePrev: contactMessage, image: "food"),
        Message(name: "I <3 pinterest", messagePrev: contactMessage, image: "pasta"),
        Message(name: "sunny", messagePrev: contactMessage, image: "zine"),
        Message(name: "bridget", messagePrev: contactMessage, image: "girl"),
        Message(name: "zoe", messagePrev: contactMessage, image: "COW!!!!")
    ]
}
