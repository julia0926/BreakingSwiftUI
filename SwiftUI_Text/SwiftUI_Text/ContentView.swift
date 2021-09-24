//
//  ContentView.swift
//  SwiftUI_Text
//
//  Created by 김지인 on 2021/07/27.
//

import SwiftUI

struct ContentView: View {
    
    //현재 날짜 출력
    static let dateFormat: DateFormatter = {
       let formatter = DateFormatter()
        formatter.dateFormat = "YY년 M월 d일"
        //formatter.dateStyle = .long
        return formatter
    }()
    
    var today = Date()
    
    var trueOrFalse : Bool = false
    var number : Int = 123
    
    var body: some View {
        VStack{
            Text("Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur")
                .tracking(2) //글자사이 간격
                
                .font(.system(.body, design: .rounded))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .multilineTextAlignment(.trailing)
                .lineLimit(nil) //멀티라인
                .lineSpacing(10) //문장라인사이 간격
                .truncationMode(.tail) //끝에가 잘리는 데 앞부분 or 뒷부분 생략
                .shadow(color: .blue, radius: 1, x: 1, y: 10)
                
                .padding(20) //양옆
                .background(Color.yellow)
                .cornerRadius(20)
                
                .padding()
                .background(Color.purple)
                .cornerRadius(10)
                
                .padding()
            
            
            Text("Hello World!")
                .background(Color.blue)
                .foregroundColor(.white) //폰트 색깔\
                .padding()
            
            Text("오늘의 날짜 : \(today, formatter: ContentView.dateFormat)")
            
            Text("참 혹은 거짓 : \(String(trueOrFalse))") //불린값은 String으로 형변환
            Text("숫자 : \(number)")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
