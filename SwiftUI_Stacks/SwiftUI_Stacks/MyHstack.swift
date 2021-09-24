//
//  MyHstack.swift
//  SwiftUI_Stacks
//
//  Created by 김지인 on 2021/08/02.
//

import SwiftUI

struct MyHstack : View {
    var body: some View{
        
        HStack(alignment: .bottom){
            
            //Divider()
            
//            Rectangle()
//                .frame(width: 100)
//                .foregroundColor(.red)
//            Rectangle()
//                .frame(width: 100, height: 100)
//                .foregroundColor(.orange)
            
            Image(systemName: "flame.fill")
                .foregroundColor(.red)
                .font(.system(size: 70))
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(.blue)
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(.purple)
            
        }
        .padding()
        .background(Color.green)
    }
}

struct MyHstack_Previews: PreviewProvider {
    static var previews: some View {
        MyHstack()
    }
}
