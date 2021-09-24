//
//  MyWebView.swift
//  SwiftUI_WebView
//
//  Created by 김지인 on 2021/07/25.
//

import SwiftUI
import WebKit

// uikit의 uiview를 사용할 수 있도록
// UIViewControllerRepresentable

struct MyWebView: UIViewRepresentable{

    
    var urlToLoad: String
    
    //ui view 만들기
    func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string: self.urlToLoad) else{ //값이 있다면 URL 인스턴스 만들어서 넣어줌 -> .load 안에
            return WKWebView() //urlToLoad의 값이 비어있다면 WKWebView 리턴
        }
        
        //웹 뷰 인스턴스 생성
        let webview = WKWebView()
        
        //웹 뷰 로드
        webview.load(URLRequest(url: url))
        
        return webview
    }
    
    //업데이트 ui view
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<MyWebView>) {
        
    }
    
}
struct MyWebView_Previews: PreviewProvider {
    static var previews: some View {
        MyWebView(urlToLoad: "https://www.naver.com")
    }
}
