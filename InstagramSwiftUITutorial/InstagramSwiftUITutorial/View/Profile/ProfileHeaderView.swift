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
                    UserStatView()
                    UserStatView()
                    UserStatView()
                }
                .padding(.trailing, 32)
            }
            UserInfoView()
            ProfileEditButton()
            }
        .padding(.leading)
    }
}

struct UserStatView: View {
    var body: some View {
        VStack {
            Text("2")
                .font(.system(size: 15, weight: .semibold))
            Text("Posts")
                .font(.system(size: 15))
        }
        //VStack에 static frame을 줌으로써 안정된 공간확보가 가능
        .frame(width: 80, alignment: .center)
    }
}

struct UserInfoView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("sujileelea")
                .font(.system(size: 15, weight: .semibold))
                .padding(.top, 1)
            Text("@dexembersixth")
                .font(.system(size: 15))
        }
        .padding(.leading)
    }
}

struct ProfileEditButton: View {
    var body: some View {
        HStack {
            //버튼 중앙정렬 시 Spacer()를 쓰는게 constant 사이즈로 padding을 주는 것보다 기기벼로 최적화에 용이하다.
            Spacer()
            Button(action: {
                
            }, label: {
                Text("Edit Profile")
                    .font(.system(size: 14, weight: .semibold))
                    .frame(width: 360, height: 32)
                    .foregroundColor(.black)
                    .overlay(
                        RoundedRectangle(cornerRadius: 3)
                            .stroke(Color.gray, lineWidth: 1)
                    )
            })
            Spacer()
        }
        .padding([.leading, .top])
    }
}


struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
    }
}
