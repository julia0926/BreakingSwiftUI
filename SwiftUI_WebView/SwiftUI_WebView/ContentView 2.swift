//
//  ContentView.swift
//  SwiftUI_WebView
//
//  Created by 김지인 on 2021/07/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        MyWebView(urlToLoad: "https://www.naver.com")
        NavigationView{
            
            HStack{
                NavigationLink(
                    destination:  MyWebView(urlToLoad: "https://www.naver.com")
                        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)){ //다음에 보여질 화면
                    //네비게이션의 설정
                    Text("NAVER")
                        .font(.system(size: 20))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding(20)
                        .background(Color.green)
                        .foregroundColor(Color.white)
                        .cornerRadius(20)
                }
                NavigationLink(
                    destination:  MyWebView(urlToLoad: "https://www.google.com")
                        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)){
                    Text("Google")
                        .font(.system(size: 20))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding(20)
                        .background(Color.red)
                        .foregroundColor(Color.white)
                        .cornerRadius(20)
                }
                NavigationLink(
                    destination:  MyWebView(urlToLoad: "https://www.daum.net")
                        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)){
                    Text("Daum")
                        .font(.system(size: 20))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding(20)
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .cornerRadius(20)
                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
