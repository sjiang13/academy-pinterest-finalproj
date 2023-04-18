//
//  HomeView.swift
//  academy-pinterest-finalproj
//
//  Created by Sophie Jiang on 4/18/23.
//

import SwiftUI

struct HomeView: View {
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
                HStack{
                    LazyVStack(){
                        ForEach(0 ..< 30){ _ in
                            Rectangle()
                                .frame(height: CGFloat.random(in: 20 ... 200))
                        }
                    }
                    LazyVStack(){
                        ForEach(0 ..< 30){ _ in
                            Rectangle()
                                .frame(height: CGFloat.random(in: 20 ... 200))
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
        HomeView()
    }
}
