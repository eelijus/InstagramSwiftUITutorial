//
//  UploadPostView.swift
//  InstagramSwiftUITutorial
//
//  Created by Suji Lee on 2023/01/20.
//

import SwiftUI

struct UploadPostView: View {
    
    //UIKit에서의 이미지. 나중에 SwiftUI의 이미지로 convert
    @State private var selectedImage: UIImage?
    //SwiftUI에서의 이미지
    @State var postImage: Image?
    @State var captionText = ""
    
    var body: some View {
        VStack {
            if postImage == nil {
                Button(action: {
                    
                }, label: {
                    Image(systemName: "plus")
                        .resizable()
                        //아래 modifier를 사용함으로써 색을 맘대로 바꿀 수 있음
                        .renderingMode(.template)
                        .scaledToFill()
                        .frame(width: 180, height: 180)
                        .clipped()
                        .padding(.top, 556)
                        .foregroundColor(.black)
                })
            } else {
                HStack(alignment: .top) {
                    Image("adora_bodin")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 96, height: 96)
                        .clipped()
                    TextField("Enter you caption", text: $captionText)
                }
                .padding()
                Button(action: {
                    
                }, label: {
                    Text("Share")
                        .font(.system(size: 16, weight: .semibold))
                        .frame(width: 260, height: 50)
                        .background(Color.blue)
                        .cornerRadius(5)
                        .foregroundColor(.white)
                })
                .padding()
            }

        }
        Spacer()
        
    }
}

struct UploadPostView_Previews: PreviewProvider {
    static var previews: some View {
        UploadPostView()
    }
}
