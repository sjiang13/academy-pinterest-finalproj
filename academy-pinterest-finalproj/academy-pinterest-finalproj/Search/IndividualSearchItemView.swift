//
//  IndividualSearchItemView.swift
//  academy-pinterest-finalproj
//
//  Created by Sophie Jiang on 4/23/23.
//

import SwiftUI

struct IndividualSearchItemView: View {
    var pinWidth = UIScreen.main.bounds.size.width / 4 - 15

    var item: SearchItem
    var body: some View {
        VStack{
            HStack{
                VStack (alignment: .leading){
                    Text("Ideas for you")
                        
                        .fontWeight(.light)
                        .font(.caption)
                    Text("\(item.name)")
                        .bold()
                }
                Spacer()
                Image(systemName: "chevron.right")
                    .bold()
            }
            .padding()
            HStack{
                ForEach(item.images) {image in
                    Image("\(image.name)")
                        .resizable()
                        .scaledToFill()
                        .frame(width: pinWidth, height: 150)
                        .cornerRadius(20)
                }
            }
        }
    }
}

//struct IndividualSearchItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        IndividualSearchItemView()
//    }
//}
