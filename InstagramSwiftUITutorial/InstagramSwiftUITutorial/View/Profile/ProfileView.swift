//
//  ProfileView.swift
//  InstagramSwiftUITutorial
//
//  Created by Suji Lee on 2023/01/20.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ScrollView {
            ProfileHeaderView()

            ZStack {
                PostGridView()
            }

            
        }
    }
    
}


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
