//
//  PostGridView.swift
//  InstagramSwiftUITutorial
//
//  Created by Suji Lee on 2023/01/21.
//

import SwiftUI

struct PostGridView: View {
    
    //인스타처럼 3열의 그리드를 만들겠다는 뜻
    private let items = [GridItem(), GridItem(), GridItem()]
    private let width = UIScreen.main.bounds.width / 3
    
    var body: some View {
        //spacing은 그리드 간의 간격을 일정하게 해줌
        LazyVGrid(columns: items, spacing: 2, content: {
            ForEach(0..<10) { _ in
                Image("adora_bodin")
                    .resizable()
                    .scaledToFill()
                    .frame(width: width, height: width)
                    .clipped()
            }
        })
    }
}

struct PostGridView_Previews: PreviewProvider {
    static var previews: some View {
        PostGridView()
    }
}
