//
//  ContentView.swift
//  academy-pinterest-finalproj
//
//  Created by Sophie Jiang on 4/18/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // want to get rid of the awkward space at the bottom
        VStack {
            HStack{
                
                TabView {
                    HomeView(vm: HomeViewModel())
                        .tabItem{
                            Label("", systemImage: "house.fill")
                        }
                    SearchView()
                        .tabItem {
                            Label("", systemImage: "magnifyingglass")
                        }
                    NewItemView()
                        .tabItem{
                            Label("", systemImage: "plus")
                        }
                    NotificationView()
                        .tabItem{
                            Label("", systemImage: "ellipsis.message.fill")
                        }
                    ProfileView()
                        .tabItem{
                            //circle placeholder
                            Label("", systemImage: "person.fill")
                                
                        }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
