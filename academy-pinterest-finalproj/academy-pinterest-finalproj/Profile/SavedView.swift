//
//  SavedView.swift
//  academy-pinterest-finalproj
//
//  Created by Sophie Jiang on 4/21/23.
//

import SwiftUI

struct SavedView: View {
    @State private var searchText: String = ""
    @Binding var add: Bool
    @StateObject var vm = SavedList()
    var body: some View {
        VStack {
            HStack {
                HStack{
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                    Spacer()
                }
                .padding(.horizontal)
                .padding(.vertical, 8)
            .background(Color.gray.clipShape(RoundedRectangle(cornerRadius:20)))
                Image(systemName: "switch.2")
                Image(systemName: "plus")
            }
            .padding(.vertical, 8)
            .padding(.horizontal)
            HStack {
                VStack{
                    if (add){
                        IndividualSavedView(saved: Saved(photoName: "cat", savedTitle: "New Folder", pinNumber: 1, time: "today"))
                        ForEach(0 ..< 2){ saved in
                            IndividualSavedView(saved: vm.savedList[saved])
                        }
                    }
                    else {
                        ForEach(vm.savedList){ saved in
                            IndividualSavedView(saved: saved)
                        }
                    }
                }
                VStack{
                    ForEach(vm.rightsavedList){ saved in
                        IndividualSavedView(saved: saved)
                    }
                }
            }
            .padding(.vertical)
        }
            
        
    }
    
}
//struct SavedView_Previews: PreviewProvider {
//    static var previews: some View {
//        SavedView()
//    }
//}
