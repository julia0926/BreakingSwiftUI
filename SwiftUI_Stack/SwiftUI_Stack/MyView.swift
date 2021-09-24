//
//  MyView.swift
//  SwiftUI_Stack
//
//  Created by 김지인 on 2021/08/12.
//

import SwiftUI

struct MyView: View{
    var title: String
    var bgColor: Color
    
    var body: some View{
        ZStack{
            bgColor.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Text(title)
                .fontWeight(.bold)
                .font(.system(size: 50))
                .foregroundColor(.white)
        }
    }
}

struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        MyView(title: "hi", bgColor: .blue)
    }
}
