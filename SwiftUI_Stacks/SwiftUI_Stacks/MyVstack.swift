//
//  MyVstack.swift
//  SwiftUI_Stacks
//
//  Created by 김지인 on 2021/08/02.
//

import SwiftUI

struct MyVstack : View{
    var body: some View{
        VStack(alignment: .trailing, spacing: 0){ //v스택 내의 것들 간격
            
            //Spacer()
            
            Text("글자")
                .font(.system(size: 30))
                .fontWeight(.bold)
            
            Divider() //alignment를 적용하려면
                .opacity(0) //선 안보이게
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.red)
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.orange)
            
//            Spacer()
//                .frame(height: 100)

            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.blue)
            
//            Spacer()
//            Spacer()
            
        }
        .frame(width: 300) //Vstack의 프레임
        .background(Color.green)
        
        //.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}
struct MyVstack_Previews: PreviewProvider {
    static var previews: some View {
        MyVstack()
    }
}

