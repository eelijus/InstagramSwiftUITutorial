//
//  UserListView.swift
//  InstagramSwiftUITutorial
//
//  Created by Suji Lee on 2023/01/21.
//

import SwiftUI

struct UserListView: View {
    var body: some View {
        Text("sd")
        ScrollView {
            LazyVStack {
                ForEach(0..<10) { _ in
                    NavigationLink(destination: {
                        ProfileView()
                    }, label: {
                        UserCell()
                            .padding(.leading)
                    })
                }
            }
        }
    }
}

struct UserListView_Previews: PreviewProvider {
    static var previews: some View {
        UserListView()
    }
}
