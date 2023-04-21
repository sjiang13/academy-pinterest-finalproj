//
//  MessageView.swift
//  academy-pinterest-finalproj
//
//  Created by Sophie Jiang on 4/20/23.
//

import SwiftUI

struct MessageView: View {
    @StateObject var vm = MessageViewModel()
    var body: some View {
            ScrollView{
                LazyVStack (alignment: .leading){
                    HStack{
                        Image(systemName: "square.and.pencil.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .symbolRenderingMode(.palette)
                            .foregroundStyle(.white, .red)
                            
                            
                            .frame(width: 45, height: 45)
                        Text("New message")
                            .font(.title3)
                            .bold()
                        Spacer()
                    }
                    .padding()
                    Text("Messages")
                        .padding(.horizontal)
                    ForEach (vm.messages){ message in
                        IndividualMessageView(message: message)
                        
                    }
                    Text("Contacts")
                        .padding(.horizontal)
                    ForEach (vm.contacts) { contact in
                        IndividualContactView(contact: contact)
                    }
                }
                
            }
            .buttonStyle(.plain)
        
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView(vm: MessageViewModel())
    }
}
