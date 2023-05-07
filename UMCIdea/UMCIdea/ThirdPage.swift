//
//  ThirdPage.swift
//  UMCIdea
//
//  Created by 백대홍 on 2023/05/06.
//

import SwiftUI

struct ThirdPage: View {
    var body: some View {
        VStack {
            Text("오답을 정리해보세요~")
            Image("찡긋")
                .resizable()
                .frame(width: 150, height: 150)
        }
    }
}

struct ThirdPage_Previews: PreviewProvider {
    static var previews: some View {
        ThirdPage()
    }
}
