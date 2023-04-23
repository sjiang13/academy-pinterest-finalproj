//
//  MessageView.swift
//  academy-pinterest-finalproj
//
//  Created by Sophie Jiang on 4/18/23.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        ScrollView{
            VStack {
                Text("Messages")
                    .font(.title)
                    .bold()
                MessageView()
            }
        }
    }
}
struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
