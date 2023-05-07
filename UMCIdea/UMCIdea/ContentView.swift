//
//  ContentView.swift
//  UMCIdea
//
//  Created by 백대홍 on 2023/05/06.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        NavigationStack {
            HStack {
                Image("앱로고")
                    .resizable()
                    .frame(width: 115, height: 80)
                Spacer()
                Image(systemName: "person")
                    .resizable()
                    .frame(width: 30, height: 30)
            }
            .padding()
            Divider()
            VStack(alignment: .leading) {
                TabView {
                    FirstPage()
                        .tabItem {
                            Image(systemName: "1.square.fill")
                            Text("개념 모음집")
                        }
                    SecondPage()
                    
                        .tabItem {
                            Image(systemName: "camera")
                            
                        }
                    ThirdPage()
                    
                        .tabItem {
                            Image(systemName: "3.square.fill")
                            Text("오답노트")
                        }
                    
                }
                .ignoresSafeArea()
                .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



