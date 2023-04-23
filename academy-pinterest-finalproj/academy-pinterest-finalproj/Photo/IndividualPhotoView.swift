//
//  PhotoView.swift
//  academy-pinterest-finalproj
//
//  Created by Sophie Jiang on 4/18/23.
//

import SwiftUI

struct IndividualPhotoView: View {
    var item: PhotoItem
    @State private var add = false
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
//    var profile: ProfileItem
    var body: some View {
        VStack{
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
                    Image("\(item.name)")
                        .resizable()
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 30))
                    HStack{
                        // profile
                        Image("\(item.pfp)")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                            .padding()
                        VStack (alignment: .leading){
                            Text("\(item.username)")
                                .bold()
                                .frame(alignment: .leading)
                            Text("\(item.followers) followers")
                            
                        }
                        // change to button later
                        Spacer()
                        Text("Follow")
                            .foregroundColor(.white)
                            .bold()
                            .padding()
                            .background(Color.black.clipShape(RoundedRectangle(cornerRadius:30)))
                            .padding(.horizontal, 20)
                        
                        
                        
                    }
                Button{
                    add = true
                } label: {
                    Text("Save pin to new folder?")
                        .font(.subheadline)
                        .bold()
                }
                .buttonStyle(.plain)
                    Spacer()
            }
        }
    }
}

struct PhotoView_Previews: PreviewProvider {
    static var previews: some View {
        IndividualPhotoView(item: PhotoItem(height: 474, name: "cat", username: "aksdljf;alkds", pfp: "jb"))
    }
}
