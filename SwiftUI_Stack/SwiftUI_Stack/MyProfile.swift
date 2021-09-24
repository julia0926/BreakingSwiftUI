//
//  MyProfile.swift
//  SwiftUI_Stack
//
//  Created by 김지인 on 2021/08/09.
//

import SwiftUI

struct MyProfile: View{
    
    @Binding var isNavBarHidden: Bool
    
    init(isNavBarHidden: Binding<Bool> = .constant(false)){
        _isNavBarHidden = isNavBarHidden //외부에서 넘어온 값을 넣음
    }
    
    
    var body: some View{
        ScrollView{
            VStack(spacing: 20){
                MyCirCleImageView()
                    .padding(10)
                Text("👩🏻‍💻 IOS 개발자 👩🏻‍💻")
                    .font(.system(size: 30))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Text("자유로운 김지인 입니다.")
                    .font(.system(size: 20))
                    .fontWeight(.medium)
                HStack {
                    Text("블로그로 이동")
                        .font(.system(size: 20))
                        .fontWeight(.heavy)
                        .padding(15)
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .cornerRadius(20)
                    Text("인스타그램")
                        .font(.system(size: 20))
                        .fontWeight(.heavy)
                        .padding(15)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(20)
                }
                
            }.padding(20)
            
            Spacer()
            Spacer()
            Spacer()
                
        }//ScrollerView
        .navigationTitle("내 프로필")
        .navigationBarItems(trailing: NavigationLink(destination:
            Text("설정화면 입니다.")
                .font(.system(size: 30))
            ){
                Image(systemName: "gear")
                    .font(.largeTitle)
                    .foregroundColor(.black)
            })
        .onAppear{
            self.isNavBarHidden = false
        }
            
    }
        
}


struct MyProfile_Previews: PreviewProvider {
    static var previews: some View {
        MyProfile()
    }
}
