//
//  UserCell.swift
//  InstagramSwiftUITutorial
//
//  Created by Suji Lee on 2023/01/21.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack {
            //image
            Image("adora_bodin")
                .resizable()
                .scaledToFill()
                .frame(width: 48, height: 48)
            //이미지를 원형으로 하고 싶을 때
            //width, height의 1/2만큼을 cornerRadius에 넣거나
            //clipShape의 값을 Circle()로 한다.
            
//                .cornerRadius(48 / 2)
                .clipShape(Circle())
            
            //VStack -> usernae, fullname
            VStack(alignment: .leading) {
                Text("adora_bodin")
                    .font(.system(size: 14, weight: .semibold))
                Text("sujileelea")
                    .font(.system(size: 14))
            }
            //HStack 안에서 이미지와 info를 Spacer()로 쭉 밀어버림
            Spacer()
        }
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
    }
}
