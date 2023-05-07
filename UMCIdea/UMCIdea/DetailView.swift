//
//  DetailView.swift
//  UMCIdea
//
//  Created by 백대홍 on 2023/05/06.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        ScrollView {
            NavigationView {
                VStack {
                    MyWebview(urlToLoad:"https://db.history.go.kr/item/level.do?sort=levelId&dir=ASC&start=1&limit=20&page=1&pre_page=1&setId=-1&totalCount=0&prevPage=0&prevLimit=&itemId=oh&types=&synonym=off&chinessChar=on&brokerPagingInfo=&levelId=oh_001_%242int&position=-1")
                }
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
