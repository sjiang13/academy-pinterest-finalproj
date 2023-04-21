//
//  PhotoView.swift
//  academy-pinterest-finalproj
//
//  Created by Sophie Jiang on 4/18/23.
//

import SwiftUI

struct IndividualPhotoView: View {
    var item: PhotoItem
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
//    var profile: ProfileItem
    var body: some View {
        ZStack{
            HStack (alignment: .top) {
                VStack (alignment: .leading){
                    Image("\(item.name)")
                        .resizable()
                        .scaledToFit()
                    HStack{
                        // profile
                        Image("\(item.name)")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                            .padding()
                        VStack (alignment: .leading){
                            Text("username")
                                .bold()
                                .frame(alignment: .leading)
                            Text("356 followers")
                            
                        }
                        // change to button later
                        Spacer()
                        Text("Follow")
                            .bold()
                            .background(.gray)
                            .padding()
                        
                    }
                }
            }
            VStack{
                HStack (alignment: .top){
                    Button{
                        self.presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "chevron.backward")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24)
                            .foregroundColor(.black)
                    }
                    .navigationBarBackButtonHidden(true)
                        
                    Spacer()
                    Image(systemName: "ellipsis")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                }
                .padding()
                Spacer()
            }
            


        }
    }
}

struct PhotoView_Previews: PreviewProvider {
    static var previews: some View {
        IndividualPhotoView(item: PhotoItem(height: 20, name: "zine"))
    }
}
