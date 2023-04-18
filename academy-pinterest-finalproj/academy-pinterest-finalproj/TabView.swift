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
            TabView {
                HomeView(vm: HomeViewModel())
                    .tabItem{
                        Label("", systemImage: "house.fill")
                    }
                SearchView()
                    .tabItem {
                        Label("", systemImage: "magnifyingglass")
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
