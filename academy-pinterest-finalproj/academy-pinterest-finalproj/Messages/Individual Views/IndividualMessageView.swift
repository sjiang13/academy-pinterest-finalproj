//
//  IndividualMessageVIew.swift
//  academy-pinterest-finalproj
//
//  Created by Sophie Jiang on 4/21/23.
//

import SwiftUI

struct IndividualMessageView: View {
    var message: Message
    var body: some View {
        HStack{
            Image(message.image)
                .resizable()
                .scaledToFit()
                .frame(width: 45, height: 45)
                .clipShape(Circle())
            VStack (alignment: .leading){
                Text(message.name)
                    .font(.body)
                Text(message.messagePrev)
                    .fontWeight(.light)
            }
            Spacer()
            Image(systemName: "chevron.right")
                .fontWeight(.bold)
                .padding(.horizontal)
            
        }
        .padding(.horizontal)
        .navigationBarBackButtonHidden(true)
        
        
    }
}
struct IndividualContactView: View{
    var contact: Message
    var body: some View {
        HStack{
            Image(contact.image)
                .resizable()
                .scaledToFit()
                .frame(width: 45, height: 45)
                .clipShape(Circle())
            VStack (alignment: .leading){
                Text(contact.name)
                    .font(.body)
                Text(contact.messagePrev)
                    .fontWeight(.light)
            }
            Spacer()
            Image(systemName: "chevron.right")
                .fontWeight(.bold)
                .padding(.horizontal)
            
        }
        .padding(.horizontal)
        
        
    }
    
}

struct IndividualMessageView_Previews: PreviewProvider {
    static var previews: some View {
        IndividualMessageView(message: Message(name: "hey", messagePrev: "ok", image: "hair"))
    }
}
