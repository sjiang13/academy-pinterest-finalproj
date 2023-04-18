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
                        //navigation link doesn't work inside of a ForEach
                            ForEach(vm.left){ item in
                                NavigationLink(destination: PhotoView(item: item)){
                                    VStack{
                                        Image("\(item.name)")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: pinWidth)
                                            .cornerRadius(15)
                                            .foregroundColor(.black)
                                        HStack{
                                            Text("\(item.name)")
                                                .bold()
                                                .foregroundColor(.black)
                                                .padding(3)
                                            Spacer()
                                            Image(systemName:"ellipsis")
                                                .resizable()
                                                .scaledToFit()
                                                .foregroundColor(.black)
                                                .frame(width: 20, height: 20)
                                                .padding(.trailing, 10)
                                        }
                                    }
                                
                            }
                        }
                    }
                    LazyVStack(){
                        //navigation link doesn't work inside of a ForEach
                            ForEach(vm.right){ item in
                                NavigationLink(destination: PhotoView(item: item)){
                                    VStack{
                                        Image("\(item.name)")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: pinWidth)
                                            .cornerRadius(15)
                                            .foregroundColor(.black)
                                        HStack{
                                            Text("\(item.name)")
                                                .bold()
                                                .foregroundColor(.black)
                                                .padding(3)
                                            Spacer()
                                            Image(systemName:"ellipsis")
                                                .resizable()
                                                .scaledToFit()
                                                .foregroundColor(.black)
                                                .frame(width: 20, height: 20)
                                                .padding(.trailing, 10)
                                        }
                                    }
                                
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

