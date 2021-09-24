//
//  MyCard.swift
//  SwiftUI_Stack
//
//  Created by 김지인 on 2021/08/03.
//

import SwiftUI

struct MyCard : View {
    
    //입력 받을 변수
    var icon : String
    var title : String
    var start : String
    var end : String
    var bgColor : Color
    
    var body: some View{
        
        
        HStack(spacing: 20){
            Image(systemName: icon)
                .font(.system(size: 60))
                .foregroundColor(.white)
                //.frame(width: 100, height: 100)
            
            VStack(alignment: .leading, spacing: 0){
                Divider().opacity(0) //줄을 긋고 투명하게 해서 꽉채움 가로로
                Text(title)
                    .font(.system(size: 30))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                Spacer().frame(height: 5)
                Text("\(start) - \(end)")
                    .foregroundColor(.white)
                
            }
        }.padding(20)
        .background(bgColor)
        .cornerRadius(20)
        
    }
    
}

struct MyCard_Previews: PreviewProvider {
    static var previews: some View {
        MyCard(icon: "book.fill", title: "책읽기", start: "1 PM", end: "3 PM", bgColor: Color.blue).hideRowSeparator(insets: EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10), background: Color.yellow)
        
    }
}
