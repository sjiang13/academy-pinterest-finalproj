//
//  HomeView.swift
//  academy-pinterest-finalproj
//
//  Created by Sophie Jiang on 4/18/23.
//

import SwiftUI

struct HomeView: View {
    @StateObject var vm: HomeViewModel
    var body: some View {
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
                    Text("Browse")
                        .bold()
                        .padding()
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
                            Image("\(item.name)")
                                .resizable()
                                .scaledToFill()
                                .frame(height: item.height)
                                .cornerRadius(15)
                            HStack{
                                Text("\(item.name)")
                                    .bold()
                                    .padding(3)
                                Spacer()
                                Image(systemName:"ellipsis")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 20, height: 20)
                                    
                            }
                        }
                    }
                    LazyVStack(){
                        ForEach(vm.right){ item in
                            Image("\(item.name)")
                                .resizable()
                                .scaledToFill()
                                .frame(height: item.height)
                                .cornerRadius(15)
                            HStack{
                                Text("\(item.name)")
                                    .bold()
                                Spacer()
                                Image(systemName:"ellipsis")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 20, height: 20)
                            }
                        }
                    }

                }
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
