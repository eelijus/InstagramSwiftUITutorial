//
//  LoginView.swift
//  InstagramSwiftUITutorial
//
//  Created by Suji Lee on 2023/01/23.
//

import SwiftUI

struct LoginView: View {
    
    @State private var id = ""
    @State private var pw = ""
    
    var body: some View {
        NavigationView {
            //화면 전체를 채울 배경이기때문에 ZStack으로
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                VStack {
                    Image("intagram logo image")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 10)
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
                    }
                    //forgot password?
                    HStack {
                        Spacer()
                        Button(action: {
                            
                        }, label: {
                            Text("Forgot Password?")
                                .font(.system(size: 13, weight: .semibold))
                                .foregroundColor(.white)
                                .padding(.top)
                                .padding(.trailing, 28)
                        })
                    }
                    //sign in
                    Button(action: {
                        
                    }, label: {
                        Text("Sign In")
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
//                     Button(action: {
//
//                     }, label: {
//                         HStack {
//                             Text("Don't have and account?")
//                                 .font(.system(size: 14))
//                             Text("Sign up")
//                                 .font(.system(size: 14, weight: .semibold))
//                         }
//                         .foregroundColor(.white)
//                     })
//                     .padding(.bottom, 16)
                    NavigationLink(destination: {
                        RegistrationView()
                            .navigationBarHidden(true)
                    }, label: {
                         HStack {
                             Text("Don't have and account?")
                                 .font(.system(size: 14))
                             Text("Sign up")
                                 .font(.system(size: 14, weight: .semibold))
                         }
                         .foregroundColor(.white)
                    })
                    .padding(.bottom, 16)
                }
//                .padding(.top, -44)
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
