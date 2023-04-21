//
//  UpdatesView.swift
//  academy-pinterest-finalproj
//
//  Created by Sophie Jiang on 4/20/23.
//

import SwiftUI

struct UpdatesView: View {
    @StateObject var vm: UpdatesViewModel
    var body: some View {
        ScrollView{
            ForEach (vm.updatesList) { update in
                VStack{
                    HStack{
                        Text("Pins inspired by you")
                        Text("\(update.number)\(update.time)")
                            .fontWeight(.thin)
                    }
                        HStack{
                            ForEach (0 ..< 3, id: \.self){ index in
                                Image("\(update.photos[index].name)")
                                    .resizable()
                                    .scaledToFit()
                                    
                            
                        }
                    }
                    
                }
                
                
            }
        }
    }
}

struct UpdatesView_Previews: PreviewProvider {
    static var previews: some View {
        UpdatesView(vm: UpdatesViewModel())
    }
}
