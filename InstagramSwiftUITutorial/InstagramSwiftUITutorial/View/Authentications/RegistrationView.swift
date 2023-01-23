//
//  RegistrationView.swift
//  InstagramSwiftUITutorial
//
//  Created by Suji Lee on 2023/01/23.
//

import SwiftUI

struct RegistrationView: View {
    
    @State private var id = ""
    @State private var pw = ""
    @State private var realName = ""
    @State private var nickName = ""
    //UIKit에서의 이미지. 나중에 SwiftUI의 이미지로 convert
    @State private var selectedImage: UIImage?
    //SwiftUI에서의 이미지
    @State var image: Image?
    @State var imagePickerPresented = false
    
    //네비게이션링크 혹은 모달 등으로 present된 뷰들을 dismiss할때 사용
    @Environment(\.presentationMode) var mode
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack {
                ZStack {
                    if let image = image {
                        image
                            .resizable()
                            .scaledToFill()
                            .frame(width: 140, height: 140)
                            .clipShape(Circle())
                            .padding(.top, 44)
                        
                    } else {
                        Button(action: {
                            imagePickerPresented.toggle()
                        }, label: {
                            Image(systemName: "plus")
                            //asset 이미지를 커스텀할 수 있는 modifier
                            //ex) foregroundColor
                                .renderingMode(.template)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 140, height: 140)
                                .foregroundColor(.white)
                        })
                        //onDismiss : dismiss 시 발생되는 이벤트
                        .sheet(isPresented: $imagePickerPresented, onDismiss: loadImage, content: { ImagePicker(image: $selectedImage)})
                        .padding()
                    }
                }
                VStack(spacing: 20) {
                    //ID field
                    CustomTextField(text: $id, placeholder: Text("ID"), imageName: "envelope")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color(.init(white: 1, alpha: 0.15)))
//                            .opacity(0.1)
                        .cornerRadius(10)
                        .padding(.horizontal, 32)
                    //PW field
                    CustomSecureField(text: $pw, placeholder: Text("Password"))
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
//                            .opacity(0.15)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .padding(.horizontal, 32)
                    CustomTextField(text: $realName, placeholder: Text("Real Name"), imageName: "person")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color(.init(white: 1, alpha: 0.15)))
//                            .opacity(0.1)
                        .cornerRadius(10)
                        .padding(.horizontal, 32)
                    CustomTextField(text: $nickName, placeholder: Text("Nick NAme"), imageName: "person")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color(.init(white: 1, alpha: 0.15)))
//                            .opacity(0.1)
                        .cornerRadius(10)
                        .padding(.horizontal, 32)
                    
                    //sign in
                    Button(action: {
                        
                    }, label: {
                        Text("Sign Up")
                            .font(.title3)
                            .foregroundColor(.white)
                            .frame(width: 360, height: 50)
                            //backgound가 frame 뒤에 와야 해당 프레임만큼 색을 입힌다.
                            .background(Color(#colorLiteral(red: 0.7432869435, green: 0.353106284, blue: 1, alpha: 1)))
                            //clipShape 또한 backgrond 뒤에 와야 해당 색덩어리에 모양을 입힌다.
                            .clipShape(Capsule())
                            .padding()
                    })
                    //register
                    Spacer()
                    Button(action: {
                        //wrappedValue: 해당 뷰(지금 뷰)를 mode를 사용해 dismiss할게 이런 뜻임
                        mode.wrappedValue.dismiss()
                    }, label: {
                        HStack {
                            Text("Already have and account?")
                                .font(.system(size: 14))
                            Text("Sign In")
                                .font(.system(size: 14, weight: .semibold))
                        }
                        .foregroundColor(.white)
                    })
                }
            }

            }
        }
    }

extension RegistrationView {
   func loadImage() {
       //selectedImage라는 변수를 생성해 selectedImage의 값이 있으면 할당, 아니면 return
       guard let selectedImage = selectedImage else { return }
       //할당됐다면 postImage(SwiftUI용 이미지)에 변환시켜 넣어준다
       image = Image(uiImage: selectedImage)
   }
}
                       
struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
