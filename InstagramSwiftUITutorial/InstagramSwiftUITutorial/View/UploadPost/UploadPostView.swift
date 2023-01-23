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
    @State var imagePickerPresented = false
    
    var body: some View {
        VStack {
            if postImage == nil {
                Button(action: {
                    imagePickerPresented.toggle()
                }, label: {
                    Image(systemName: "plus")
//                        .resizable()
                        //아래 modifier를 사용함으로써 색을 맘대로 바꿀 수 있음
                        .renderingMode(.template)
                        .scaledToFill()
//                        .frame(width: 30, height: 10)
                        .clipped()
                        .padding(.top, 56)
                        .foregroundColor(.black)
                })
                //onDismiss : dismiss 시 발생되는 이벤트
                .sheet(isPresented: $imagePickerPresented, onDismiss: loadImage, content: { ImagePicker(image: $selectedImage)
                    
                })
            } else if let image = postImage {
                HStack(alignment: .top) {
                    image
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

extension UploadPostView {
    func loadImage() {
        //selectedImage라는 변수를 생성해 selectedImage의 값이 있으면 할당, 아니면 return
        guard let selectedImage = selectedImage else { return }
        //할당됐다면 postImage(SwiftUI용 이미지)에 변환시켜 넣어준다
        postImage = Image(uiImage: selectedImage)
    }
}

struct UploadPostView_Previews: PreviewProvider {
    static var previews: some View {
        UploadPostView()
    }
}
