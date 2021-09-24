//
//  MyZStack.swift
//  SwiftUI_Stacks
//
//  Created by 김지인 on 2021/08/02.
//

import SwiftUI

struct MyZstack : View {
    var body: some View{
        ZStack{
            //zIndex 가 커질수록 위에 쌓임 층수가 증가
            //뷰를 겹칠 수가 있음
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.pink)
                .zIndex(2) //제일먼저 보일 인덱스 설정 계층달라짐
                .offset(x: 40) //x축 오른쪽으로 옮겨짐
            Rectangle()
                .frame(width: 200, height: 200)
                .foregroundColor(Color.yellow)
                .zIndex(1)
            Rectangle()
                .frame(width: 300, height: 300)
                .foregroundColor(Color.red)
        //zIndex 디폴트 0

        }
    }
}
struct MyZstack_Previews: PreviewProvider {
    static var previews: some View {
        MyZstack()
    }
}
