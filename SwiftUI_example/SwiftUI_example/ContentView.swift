//
//  ContentView.swift
//  SwiftUI_example
//
//  Created by 김지인 on 2021/07/20.
//

import SwiftUI

struct ContentView: View {
    
    @State //값의 변화를 감지하는 @State
    private var isActivated: Bool = false
    
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    MyVstackView(isActivated: $isActivated) //연결이 됨
                    MyVstackView(isActivated: $isActivated) //연결이 됨
                    MyVstackView(isActivated: $isActivated) //연결이 됨

                }
                    .padding(isActivated ? 50.0 : 10.0)
                    .background(isActivated ? Color.gray : Color.black)
                    //탭 제스쳐 추가
                    .onTapGesture {
                        print("click")
                        //애니메이션과 함께
                        withAnimation {
                            self.isActivated.toggle() //True <-> False 바꿔줌 true이면 false로
                        }
                }//Hstack
                NavigationLink(destination: MyTextView(isActivated: $isActivated) ){
                    Text("네비게이션")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .font(.system(size: 40))
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(40)
                } .padding(.top, 50)
            }
        } //Navigation
    }//
        
}


//미리보기 보여주는 것
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
