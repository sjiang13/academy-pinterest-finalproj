//
//  SearchView.swift
//  academy-pinterest-finalproj
//
//  Created by Sophie Jiang on 4/18/23.
//

import SwiftUI
//search bar, photo icon
//large transparent photo + title
// ideas
// title, chevron
// set of photos
struct SearchView: View {
    @State private var searchString: String = ""
    var body: some View {
        ZStack{
            ScrollView{
                    VStack{
                        HStack{
                            Image(systemName: "magnifyingglass")
                            Text("Search Pinterest")
                            Spacer()
                            Image(systemName: "camera.fill")
                        }
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                    .background(Color.gray.clipShape(RoundedRectangle(cornerRadius:20)))
                    .padding(.horizontal)
                    
                        Image("search")
                            .resizable()
                            .scaledToFit()
                        Spacer()
                    }
                    
                    
                
            }
        }
        
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
