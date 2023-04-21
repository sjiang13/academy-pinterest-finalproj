//
//  PhotosView.swift
//  academy-pinterest-finalproj
//
//  Created by Sophie Jiang on 4/19/23.
//

import SwiftUI

struct PhotosView: View {
    var item: PhotoItem
    var pinWidth: CGFloat
    var body: some View {
        NavigationLink(destination: IndividualPhotoView(item: item)){
            VStack{
                Image("\(item.name)")
                    .resizable()
                    .scaledToFit()
                    .frame(width: pinWidth)
                    .cornerRadius(15)
                    .foregroundColor(.black)
                HStack{
                    Text("\(item.name)")
                        .bold()
                        .foregroundColor(.black)
                        .padding(3)
                    Spacer()
                    Image(systemName:"ellipsis")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.black)
                        .frame(width: 20, height: 20)
                        .padding(.trailing, 10)
                }
            }
            
        
    }
    }
}

//struct PhotosView_Previews: PreviewProvider {
//    static var previews: some View {
//        PhotosView()
//    }
//}
