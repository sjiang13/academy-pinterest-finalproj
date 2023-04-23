//
//  IndividualSavedView.swift
//  academy-pinterest-finalproj
//
//  Created by Sophie Jiang on 4/22/23.
//

import SwiftUI

struct IndividualSavedView: View {
    var pinWidth = UIScreen.main.bounds.size.width / 2 - 15
    var saved: Saved
    var body: some View {
        VStack (alignment: .leading){
            
            Image(saved.photoName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: pinWidth, height: pinWidth)
                    .clipShape(Rectangle())
                    .cornerRadius(25)
                                        

            VStack (alignment: .leading){
                Text(saved.savedTitle)
                    .bold()
                HStack{
                    if (saved.pinNumber == 1){
                        Text("\(saved.pinNumber) pin")
                    }
                    else {
                        Text("\(saved.pinNumber) pins")
                    }
                    Text("\(saved.time)")
                        .fontWeight(.light)
                }
            }
            .padding(.horizontal, 8)
        }
    }
}

//struct IndividualSavedView_Previews: PreviewProvider {
//    static var previews: some View {
//        IndividualSavedView()
//    }
//}
