//
//  MyCodeCard.swift
//  SwiftUI_Stack
//
//  Created by 김지인 on 2021/08/03.
//

import SwiftUI

struct MyCodeCard : View {
    
    var body: some View{
        
        HStack(spacing: 20){
            Image(systemName: "pc")
                .font(.system(size: 60))
                .foregroundColor(.white)
                //.frame(width: 100, height: 100)
            
            VStack(alignment: .leading, spacing: 0){
                Divider().opacity(0) //줄을 긋고 투명하게 해서 꽉채움 가로로
                Text("하이")
                    .font(.system(size: 30))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                Spacer().frame(height: 5)
                Text("하하이")
                    .foregroundColor(.white)
                
            }
        }.padding(20)
        .background(Color.orange)
        .cornerRadius(20)
        
    }
    
}

struct MyCodeCard_Previews: PreviewProvider {
    static var previews: some View {
        MyCodeCard()
    }
}
