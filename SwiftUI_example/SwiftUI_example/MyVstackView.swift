//
//  MyVstackView.swift
//  SwiftUI_example
//
//  Created by 김지인 on 2021/07/23.
//

import SwiftUI

struct MyVstackView: View{
    
    //데이터 연동
    @Binding
    var isActivated: Bool
    
    //생성자
    init(isActivated: Binding<Bool> = .constant(false)) {
        _isActivated = isActivated
    }

    
    var body: some View{
        VStack{
            Text("1!")
                .font(.system(size: 60))
                .fontWeight(.bold)
            Text("2!")
                .font(.system(size: 60))
                .fontWeight(.bold)
            Text("3!")
                .font(.system(size: 60))
                .fontWeight(.bold)
        }
        .background(self.isActivated ? Color.green : Color.red)
        .padding(self.isActivated ? 10 : 0)
    }
}
struct MyVstackView_Previews: PreviewProvider {
    static var previews: some View {
        MyVstackView()
    }
}

