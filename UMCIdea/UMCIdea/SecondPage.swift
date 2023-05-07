//
//  SecondPage.swift
//  UMCIdea
//
//  Created by 백대홍 on 2023/05/06.
//

import SwiftUI
struct SecondPage: View {
    @State private var showCamera = false
    @State private var image: UIImage?
    var body: some View {
        VStack {
            if image != nil {
                Image(uiImage: image!)
                    .resizable()
                    .scaledToFit()
            } else {
                Button("사진 찍기") {
                    self.showCamera = true
                }
            }
        }
        .sheet(isPresented: $showCamera) {
            ImagePickerView(selectedImage: self.$image, sourceType: .camera)
        }
    }
}



