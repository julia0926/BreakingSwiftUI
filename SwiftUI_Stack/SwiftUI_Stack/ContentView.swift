
//  ContentView.swift
//  SwiftUI_Stack
//
//  Created by 김지인 on 2021/08/03.
//

import SwiftUI

struct ContentView: View {

    @State var isNavBarHidden : Bool = false //값을 감지


    var body: some View {
        NavigationView{
            ZStack(alignment: .bottomTrailing) {

                VStack(alignment: .leading, spacing: 0) {
                    HStack{
                        NavigationLink(destination: MyList(isNavBarHidden: self.$isNavBarHidden)){
                            Image(systemName: "list.dash")
                                .font(.largeTitle)
                        }
                        Spacer()

                        //프로필로 이동하는 네비게이션
                        NavigationLink(
                            destination: MyProfile(isNavBarHidden: self.$isNavBarHidden)){

                            Image(systemName: "person.crop.circle.fill")
                                .font(.largeTitle)
                                .foregroundColor(.black)
                        }

                    }.padding(20)
                    //.padding(.horizontal, 20)

                    Text("지이니's ToDoList")
                        .font(.system(size: 40))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding(.horizontal, 20)

                    ScrollView{
                        VStack{
                            MyProjectCard()
                            MyCard(icon: "figure.walk", title: "산책", start: "10 AM", end: "11 AM", bgColor: Color.green)
                            MyCodeCard()
                            MyCard(icon: "bed.double.fill", title: "취침", start: "12 PM", end: "7:30 AM", bgColor: Color.gray)
                            MyCard(icon: "message.circle.fill", title: "메세지 확인", start: "17 PM", end: "8 PM", bgColor: Color.blue)
                            MyCard(icon: "play.rectangle.fill", title: "인강듣기", start: "1 PM", end: "3 PM", bgColor: Color.red)


                            }.padding()
                        }
                    }

                    Circle()
                        .foregroundColor(Color.purple)
                        .frame(width: 60, height: 60)
                    .overlay(
                        Image(systemName: "plus")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                    )
                        .padding(.trailing, 10)
                    .shadow(radius: 20)
                } //ZStack

                .navigationTitle("뒤로가기")
                .navigationBarHidden(self.isNavBarHidden)
                .onAppear{
                    self.isNavBarHidden = true //랜더링할 때
                }
        }//NavigationView


        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
