//
//  MyProjceCard.swift
//  SwiftUI_Stack
//
//  Created by 김지인 on 2021/08/03.
//

import SwiftUI

struct MyProjectCard : View{
    
    @State var shoulcShowAlert : Bool = false
    
    var body: some View{
        VStack(alignment: .leading, spacing: 0){
            Rectangle().frame(height: 0) //안에있는 속성들이 alignment적용됨
            
            Text("지이니의 IOS 개발일정")
                .font(.system(size: 25))
                .fontWeight(.black)
                .padding(.bottom, 5)
            Text("AM 10 - 11 ")
                .foregroundColor(.secondary) //회색
//                .padding(.bottom, 10)
            Spacer().frame(height: 20)
            HStack{
                Image("1")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(lineWidth: 4)
                                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/))
                Image("2")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                Image("3")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                Spacer()
                
                //
                Button(action: {
                    print("확인 버튼 클릭")
                    self.shoulcShowAlert = true
                }){ //버튼 디자인
                    Text("확인")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 90)
                        .background(Color.blue)
                        .cornerRadius(20)
                }.alert(isPresented: $shoulcShowAlert) {
                    Alert(title: Text("알림 창 입니다."))
                }
                
            }
        }
        .padding(30)
        .background(Color.yellow)
        .cornerRadius(30)
    }
}
struct MyProjectCard_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MyProjectCard()
            
        }
    }
}
