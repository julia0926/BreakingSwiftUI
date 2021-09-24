//
//  MyCircleImageView.swift
//  SwiftUI_Stack
//
//  Created by 김지인 on 2021/08/09.
//

import SwiftUI

struct MyCirCleImageView: View{
    var body: some View{
        Image("Me")
        .resizable()
            .scaledToFill()
                .frame(width: 250, height: 250)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .overlay(Circle().strokeBorder(Color.gray, lineWidth: 7))
                .shadow(color: .gray, radius: 5, y: 6)
        
    }
}

struct MyCircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        MyCirCleImageView()
    }
}
