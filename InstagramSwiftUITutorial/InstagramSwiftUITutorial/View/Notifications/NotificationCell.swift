//
//  NotificationCell.swift
//  InstagramSwiftUITutorial
//
//  Created by Suji Lee on 2023/01/21.
//

import SwiftUI

struct NotificationCell: View {
    
    @State private var showPostImage = true
    
    var body: some View {
        HStack {
            Image("adora_bodin")
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
                .clipShape(Circle())
            Text("adora_bodin")
                .font(.system(size: 14, weight: .semibold))
            Text("notifiation detail")
                .font(.system(size: 15))
            Spacer()
            if showPostImage {
                Image("adora_bodin")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
            } else {
                Button(action: {
                    
                }, label: {
                    Text("follow")
                        .padding(.horizontal, 20)
                        .padding(.vertical, 8)
                        .backgroundStyle(Color(.systemBlue))
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                        .font(.system(size: 14, weight: .semibold))
                })
            }
        }
        .padding(.horizontal)
    }
}

struct NotificationCell_Previews: PreviewProvider {
    static var previews: some View {
        NotificationCell()
    }
}
