//
//  CircleImageView.swift
//  Image
//
//  Created by 김지인 on 2021/07/27.
//

import SwiftUI

struct CircleImageView : View {
    var body: some View {
//        Image(systemName: "keyboard")
//            .font(.system(size: 200))
//            .foregroundColor(.blue)
//            .shadow(color: .gray, radius: 1, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 10)
        Image("myImage")
            .resizable()
            .scaledToFill() //aspectRatio랑 같음
//            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            .frame(width: 300, height: 300)
            //.clipped()
            //.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .clipShape(Circle()) //동그라미로 자름
            .shadow(color: .black, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 10) //그림자
            .overlay(Circle().foregroundColor(.white)
                        .opacity(0.4))
            
            .overlay(Circle().stroke(Color.blue, lineWidth: 10)
                        .padding()
            ) // 겉 테두리
            .overlay(Circle().stroke(Color.purple, lineWidth: 10)
                        .padding(30)
            ) // 겉 테두리
            .overlay(Circle().stroke(Color.yellow, lineWidth: 10)) // 겉 테두리
            
            .overlay(Text("Just Do it!").foregroundColor(.black)
                        .font(.system(size: 40))
                        .fontWeight(.bold)) // 겉 테두리

    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView()
    }
}
