//
//  ContentView.swift
//  menu_tutorial
//
//  Created by 김지인 on 2021/09/24.
//

import SwiftUI

let myPets = ["멍 🐶","냥 🐈", "찍 🐭"]

struct ContentView: View {
    
    @State private var shouldShowAlert : Bool = false
    @State private var myText : String = ""
    @State private var selected : Int = 0
    
    var body: some View {
        NavigationView{
            VStack(spacing: 20){
                Text("\(myPets[selected])").font(.system(size: 60))
                Text("우측 상단에 !!!를 눌러주세요")
            }
                .padding()
                .navigationTitle("하이")
                .toolbar(content: {
                    ToolbarItem(placement: .navigationBarLeading,
                        content:{
                            Menu(content: {
                                
                                Text("하하하")
                                Button{
                                    print("후원하기 버튼!")
                                    shouldShowAlert = true
                                    myText = "후원하기"
                                } label: {
                                    Label("후원하기", systemImage: "house.fill")
                                }
                                Text("하하하")
                                Text("하하하")
                                Text("하하하")
                                //섹션을 나눌 수 있음
                                Section{
                                    Button{
                                        print("하하하 버튼!")
                                        shouldShowAlert = true
                                        myText = "하하하"
                                    } label: {
                                        Label("하하하", systemImage: "flame.fill")
                                    }
                                }
                                Picker(selection: $selected, label: Text("애완동물 선택")){
                                    ForEach(myPets.indices, id: \.self, content: { index in
                                        Text("\(myPets[index])").tag(index)
                                    })
                                }
                                
                        }, label: {
                            Circle().foregroundColor(Color.init(#colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)))
                                .frame(width: 50, height: 50)
                                .overlay(Label("더보기", systemImage: "ellipsis")
                                    .font(.system(size: 30)))
                                    .foregroundColor(.white)
                            
                        })
                    })
                }) //toolbar
                .alert(isPresented: $shouldShowAlert, content: {
                    Alert(title: Text("알림"), message: Text("\(myText)"), dismissButton: .default(Text("확인")))
                })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
