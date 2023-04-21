//
//  NewItemView.swift
//  academy-pinterest-finalproj
//
//  Created by Sophie Jiang on 4/18/23.
//

import SwiftUI

struct NewItemView: View {
    @State private var showingSheet = true
    var body: some View {
        HStack (alignment: .bottom){
            VStack {
                Text("Start creating now")
                    .bold()
                HStack{
                    Image(systemName: "square.filled.on.square")
                }
                
            }
        }
    }
}

struct NewItemView_Previews: PreviewProvider {
    static var previews: some View {
        NewItemView()
    }
}
