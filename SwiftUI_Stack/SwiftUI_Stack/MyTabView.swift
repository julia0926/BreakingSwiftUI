//
//  MyTabView.swift
//  SwiftUI_Stack
//
//  Created by 김지인 on 2021/08/12.
//

import SwiftUI

struct MyTabView : View {
    var body: some View{
        TabView{
            MyView(title: "one", bgColor: .yellow)
                .tabItem {
                    Image(systemName: "pencil")
                    Text("쓰기")
                }.tag(0)
            
            MyView(title: "two", bgColor: .purple)
                .tabItem {
                    Image(systemName: "airplane")
                    Text("비행기")
                }.tag(1)
            MyView(title: "three", bgColor: .gray)
                .tabItem {
                    Image(systemName: "folder.fill")
                    Text("폴더")
                }.tag(2)
        }
    }
}

struct MyTabView_Previews: PreviewProvider {
    static var previews: some View {
        MyTabView()
    }
}
