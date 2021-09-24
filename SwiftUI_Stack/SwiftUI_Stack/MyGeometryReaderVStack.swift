//
//  MyGeometryReaderVStack.swift
//  SwiftUI_Stack
//
//  Created by 김지인 on 2021/08/11.
//

import SwiftUI

enum Index {
    case one, two, three
}

struct MyGeometryReaderVStack : View{
    
    @State var index: Index = .one //디폴트 값은 one으로
    
    var body: some View{
        
        GeometryReader{ geometry in
            VStack {
                Button(action:{
                    print("1 클릭")
                    withAnimation {
                        self.index = .one
                    }
                }){
                    Text("1")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width: 100,height: geometry.size.height / 3)
                        .padding(.horizontal, self.index == .one ? 40 : 0)
                        .background(Color.orange)
                        .foregroundColor(.white)
    
                }
                Button(action:{
                    print("2 클릭")
                    withAnimation {
                        self.index = .two
                    }

                }){
                    Text("2")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width: 100,height: geometry.size.height / 3)
                        .padding(.horizontal, self.index == .two ? 50 : 0)
                        .background(Color.green)
                        .foregroundColor(.white)
                            
                    
                }
                Button(action:{
                    print("2 클릭")
                    withAnimation {
                        self.index = .three
                    }
                }){
                    Text("3")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width: 100,height: geometry.size.height / 3)
                        .padding(.horizontal, self.index == .three ? 50 : 0)
                        .background(Color.purple)
                        .foregroundColor(.white)
                            
                    
                }
                
            }
            .frame(width : geometry.size.width,
                    height : geometry.size.height,
                    alignment : .center)
            
            .background(Color.yellow)
            

        }
    }
}

struct MyGeometryReaderVStack_Previews: PreviewProvider {
    static var previews: some View {
        MyGeometryReaderVStack()
    }
}
