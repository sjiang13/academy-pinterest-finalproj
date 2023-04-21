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
    var body: some View {
        ZStack{
            ScrollView{
                
                    VStack{
                        Image("food")
                            .resizable()
                            .scaledToFill()
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
