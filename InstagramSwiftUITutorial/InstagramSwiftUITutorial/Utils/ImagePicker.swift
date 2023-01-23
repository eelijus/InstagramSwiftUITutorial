//
//  ImagePicker.swift
//  InstagramSwiftUITutorial
//
//  Created by Suji Lee on 2023/01/23.
//

import SwiftUI
import UIKit

struct ImagePicker: UIViewControllerRepresentable {

    @Binding var image: UIImage?
    @Environment(\.presentationMode) var mode
    
    //creates the view controller we need
    func makeUIViewController(context: Context) -> some UIViewController {
        //우리가 사용할 이미지 피커를 실제로 생성해주는 함수
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator as? any UIImagePickerControllerDelegate & UINavigationControllerDelegate
        return picker
    }
    
    //UIKit의 뷰컨트롤러가 SwiftUI에 잘 녹아들게 하기 위한 함수
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    

    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
    
    class Coordinator: NSObject, UINavigationBarDelegate, UIImagePickerControllerDelegate {
       
        let parent: ImagePicker
        
        init(_ parent: ImagePicker) {
            self.parent = parent
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            guard let image = info[.originalImage] as? UIImage else { return }
            self.parent.image = image
            self.parent.mode.wrappedValue.dismiss()
        }
    }
}
