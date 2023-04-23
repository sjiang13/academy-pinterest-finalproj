//
//  ProfileView.swift
//  academy-pinterest-finalproj
//
//  Created by Sophie Jiang on 4/18/23.
//

import SwiftUI

struct ProfileView: View {
    @State private var showCreated = false
    @State private var showSaved = true
    @State private var add: Bool = false
    var body: some View {
        ScrollView{
            HStack{
                Spacer()
                Image(systemName: "tray.and.arrow.up")
                    
                Image(systemName: "ellipsis")
                    .padding(.horizontal)
            }
            .padding(.horizontal)
                VStack{
                    Image("flower")
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 180, height: 180)
                    Text("Sophie")
                        .font(.largeTitle)
                        .bold()
                    HStack{
                        Text("1153 followers")
                            .bold()
                        Text("|")
                        Text("682 following")
                            .bold()
                    }
                }
                .padding(.vertical)
            HStack{
                Button{
                    showCreated = true
                    showSaved = false
                } label: {
                    if (showSaved){
                        Text("Created")
                            .foregroundColor(.black)
                            .bold()
                            .padding(.horizontal)
                            .padding(.vertical)
                            .background(Color.white .clipShape(RoundedRectangle(cornerRadius:30)))
                    } else {
                        Text("Created")
                            .foregroundColor(.white)
                            .bold()
                            .padding(.horizontal)
                            .padding(.vertical)
                            .background(Color.black .clipShape(RoundedRectangle(cornerRadius:30)))
                    }
                    
                }
                .buttonStyle(.plain)
                Button {
                    if (showCreated){
                        add = true
                    }
                    showSaved = true
                    showCreated = false
                } label: {
                    if (showCreated){
                        Text("Saved")
                            .foregroundColor(.black)
                            .bold()
                            .padding(.horizontal)
                            .padding(.vertical)
                            .background(Color.white .clipShape(RoundedRectangle(cornerRadius:30)))
                    } else {
                        Text("Saved")
                            .foregroundColor(.white)
                            .bold()
                            .padding(.horizontal)
                            .padding(.vertical)
                            .background(Color.black .clipShape(RoundedRectangle(cornerRadius:30)))
                    }
                }
                .buttonStyle(.plain)
            }
            if (showSaved){
                SavedView(add: $add)
            }
            if (showCreated){
                CreatedView()
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
