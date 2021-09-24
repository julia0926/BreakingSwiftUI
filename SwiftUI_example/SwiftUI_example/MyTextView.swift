//
//  MyTextView.swift
//  SwiftUI_example
//
//  Created by 김지인 on 2021/07/24.
//

import SwiftUI

struct MyTextView: View {
    
    //데이터 연동
        @Binding
        var isActivated: Bool
        
        //생성자
        init(isActivated: Binding<Bool> = .constant(false)) {
            _isActivated = isActivated
        }
    
    @State //값의 변화를 감지하는 @State
    private var index: Int = 0
    
    //배경색 배열
    private let backgroundColors = [
        Color.red,
        Color.yellow,
        Color.blue,
        Color.green,
        Color.orange
    ]
    
    var body: some View {
        VStack{
            Spacer()
            Text("배경 아이템 인덱스 \(self.index)")
                .font(.system(size: 40))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 100)
            Text("활성화 상태: \(String(isActivated))")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .foregroundColor(self.isActivated ? Color.yellow : Color.gray) //폰트 칼라
                .background(Color.white)
            Spacer()
            
        }.background(backgroundColors[index])
        .edgesIgnoringSafeArea(.all) //빈틈엢이 모두 채울 때
        .onTapGesture {
            print("배경 아이템 클릭")
            
            if(self.index == self.backgroundColors.count - 1){ //배열의 인덱스가 끝까지 왔을 때 (하지 않으면 에러)
                self.index = 0
            }else{
                self.index += 1
            }
            
        }
    }
}
struct MyTextView_Previews: PreviewProvider {
    static var previews: some View {
        MyTextView()
    }
}
