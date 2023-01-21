//
//  NotificationsView.swift
//  InstagramSwiftUITutorial
//
//  Created by Suji Lee on 2023/01/20.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 10) {
                ForEach(1..<10) {_ in
                    NavigationLink(destination: {
                        
                    }, label: {
                        NotificationCell()
                            .padding(.top)
                    })
                }
            }
        }
    }
}

struct NotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsView()
    }
}
