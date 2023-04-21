//
//  MessageView.swift
//  academy-pinterest-finalproj
//
//  Created by Sophie Jiang on 4/18/23.
//

import SwiftUI

struct NotificationView: View {
    @StateObject var vm = UpdatesViewModel()
    @State private var showMessages = false
    @State private var showUpdates = true
    var body: some View {
        VStack {
            HStack{
                Button{
                    showUpdates = true
                    showMessages = false
                } label: {
                    Text("Updates")
                        .bold()
                }
                .buttonStyle(.plain)
                Button{
                    showMessages = true
                    showUpdates = false
                } label: {
                    Text("Messages")
                        .bold()
                }
                .buttonStyle(.plain)
            }
            
            if showUpdates {
                UpdatesView(vm: vm)
            }
            if showMessages {
                MessageView()
            }
        }
    }
}
struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView(vm: UpdatesViewModel())
    }
}
