//
//  ProfileHeaderView.swift
//  InstagramSwiftUITutorial
//
//  Created by Suji Lee on 2023/01/22.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image("adora_bodin")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                    .padding(.leading)
                Spacer()
                HStack(spacing: 16) {
                    UserStatView(value: 92, title: "Post")
                    UserStatView(value: 180, title: "Followers")
                    UserStatView(value: 126, title: "Following")
                }
                .padding(.trailing, 32)
            }
            UserInfoView()
            HStack {
                Spacer()
                ProfileActionButtonView()
                Spacer()
            }
            .padding(.top)
        }
    }
}

struct UserInfoView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("sujileelea")
                .font(.system(size: 15, weight: .semibold))
                .padding([.leading, .top])
            Text("@dexembersixth")
                .font(.system(size: 15))
                .padding(.leading)
                .padding(.top, 1)
        }
    }
}




struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
    }
}
