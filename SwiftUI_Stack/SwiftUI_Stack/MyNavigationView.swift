//
//  MyNavigationView.swift
//  SwiftUI_Stack
//
//  Created by 김지인 on 2021/08/04.
//

import SwiftUI

struct MyNavigationView : View {
    var body: some View{
        
        NavigationView{
//            Text("MyNavigationView")
//                .navigationBarTitle("Hello", displayMode: .automatic)
            MyList()
//                .navigationBarTitle("Hello", displayMode: .large)
            .navigationBarTitle("Title임당",displayMode: .automatic)
                
                .navigationBarItems(leading: Button(action: {
                    print("버튼 클릭!") //
                    }){
                        Text("Wow!")
                    }
                ,trailing: NavigationLink(destination: Text("넘어온 화면 입니다")){
                    Image(systemName: "bookmark.fill")
                        .font(.largeTitle)
                        .foregroundColor(Color.gray)
                }
                )//네비게이션 바 아이템
            
        }
    }
}

struct MyNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        MyNavigationView()
        
    }
}
