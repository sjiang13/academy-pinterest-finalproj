//
//  ProfileView.swift
//  academy-pinterest-finalproj
//
//  Created by Sophie Jiang on 4/18/23.
//

import SwiftUI

struct ProfileView: View {
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
                    Image("hair")
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
            
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
