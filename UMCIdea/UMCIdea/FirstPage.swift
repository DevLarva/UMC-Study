//
//  FirstPage.swift
//  UMCIdea
//
//  Created by 백대홍 on 2023/05/06.
//

import SwiftUI

struct FirstPage: View {
    var options = ["한국사", "토익", "운전면허", "기능사", "정보처리기사"]
    @State private var selectionOption = 0
    
    var body: some View {
        
        NavigationStack {
            ScrollView {
                VStack(alignment: .center, spacing: 20) {
                    HStack {
                        Text(options[selectionOption])
                            .font(.title)
                            .bold()
                     
                        Spacer()
                        Picker("Select Choice", selection: $selectionOption) {
                          ForEach(0 ..< options.count) {
                            Text(options[$0])
                          }
                        }
                    } .padding()
                    
                    
                    NavigationLink(destination: DetailView()) {
                        HStack(alignment: .center) {
                                Text("1단원. 선사시대")
                                    .fontWeight(.semibold)
                                    .font(.largeTitle)
                            }
                            .padding()
                            .frame(width: 550)
                            .foregroundColor(.black)
                            .background(.secondary)
                            .cornerRadius(10)
                        } .onAppear {
                            // Set preferred orientation to landscape
                            UIDevice.current.setValue(UIInterfaceOrientation.landscapeRight.rawValue, forKey: "orientation")
                        }
                        
                        
                   
                    
                    NavigationLink(destination: DetailView()) {
                        HStack(alignment: .center) {
                                Text("2단원. 고대")
                                    .fontWeight(.semibold)
                                    .font(.largeTitle)
                            }
                            .padding()
                            .frame(width: 550)
                            .foregroundColor(.black)
                            .background(.secondary)
                            .cornerRadius(10)
                        } .onAppear {
                            // Set preferred orientation to landscape
                            UIDevice.current.setValue(UIInterfaceOrientation.landscapeRight.rawValue, forKey: "orientation")
                        }
                        
                    
                    
                    NavigationLink(destination: DetailView()) {
                        HStack(alignment: .center) {
                                Text("3단원. 고려시대")
                                    .fontWeight(.semibold)
                                    .font(.largeTitle)
                            }
                            .padding()
                            .frame(width: 550)
                            .foregroundColor(.black)
                            .background(.secondary)
                            .cornerRadius(10)
                        } .onAppear {
                            // Set preferred orientation to landscape
                            UIDevice.current.setValue(UIInterfaceOrientation.landscapeRight.rawValue, forKey: "orientation")
                        }
                        
                    
                    
                    NavigationLink(destination: DetailView()) {
                        HStack(alignment: .center) {
                                Text("4단원. 조선시대")
                                    .fontWeight(.semibold)
                                    .font(.largeTitle)
                            }
                            .padding()
                            .frame(width: 550)
                            .foregroundColor(.black)
                            .background(.secondary)
                            .cornerRadius(10)
                        } .onAppear {
                            // Set preferred orientation to landscape
                            UIDevice.current.setValue(UIInterfaceOrientation.landscapeRight.rawValue, forKey: "orientation")
                        }
                        
                    
                    HStack(alignment: .center) {
                        NavigationLink(destination: MyWebview(urlToLoad: "https://event.etoos.com/early.html?_C_=69199931&utm_source=google_pc&utm_medium=cpc&utm_campaign=sa_20221124_%EC%9D%B4%ED%88%AC%EC%8A%A4%ED%8C%A8%EC%8A%A4_%EB%B3%B8&gad=1&gclid=Cj0KCQjw0tKiBhC6ARIsAAOXutlbouWoJJdx2ArlLDPmJglgQRSZ0-Uak_fcZj9N3ysJh1kE6QDRlPAaAtf1EALw_wcB")) {
                            Image("top")
                                .resizable()
                                .frame(width: 500, height: 300)
                                .clipShape(Rectangle())
                            
                        }
                    }
                }
                
                
            }
        }
    }
}

struct FirstPage_Previews: PreviewProvider {
    static var previews: some View {
        FirstPage()
    }
}


