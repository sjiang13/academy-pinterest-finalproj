//
//  HomeView.swift
//  academy-pinterest-finalproj
//
//  Created by Sophie Jiang on 4/18/23.
//

import SwiftUI

struct HomeView: View {
    @StateObject var vm: HomeViewModel
    var pinWidth = UIScreen.main.bounds.size.width / 2 - 15
    var body: some View {

            NavigationView{
                VStack {
                    ZStack{
                        HStack {
                            Image(systemName: "airplayvideo.circle")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                                .padding()
                            Spacer()
                        }
                        HStack{
                            Spacer()
                            VStack{
                                Text("Browse")
                                    .bold()
                                    .padding()
                                //line
                            }
                            Text("Watch")
                                .bold()
                                .padding()
                            Spacer()
                        }
                    }
                ScrollView{
                    // max HStack width
                    HStack(alignment: .top){
                        LazyVStack(){
                            ForEach(vm.left){ item in
                                PhotosView(item: item, pinWidth: pinWidth)
                            }
                        }
                        LazyVStack(){
                            ForEach(vm.right){ item in
                                PhotosView(item: item, pinWidth: pinWidth)
                            }
                        }
                        
                    }
                    
                }
                .navigationBarBackButtonHidden(true)
            }
            .padding(8)
        }
        
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(vm: HomeViewModel())
    }
}

