//
//  ContentView.swift
//  Picker
//
//  Created by 김지인 on 2021/09/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectionValue = 0
    @State private var selectColor = ["레드","그린","블루"]
    var body: some View {
        VStack(alignment: .center) {
            Circle().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .center)
                .foregroundColor(.black)
            Text("세그먼트 value : \(selectionValue)")
            Text("선택된 색깔 : ")
            
            Picker("피커", selection: $selectionValue, content: {
                ForEach(selectColor.indices, id: \.self,
                        content: { index in
                            Text("\(selectColor[index])").tag(index)
                        })
            }).pickerStyle(SegmentedPickerStyle())
            
            Picker("피커", selection: $selectionValue, content: {
                ForEach(selectColor.indices, id: \.self,
                        content: { index in
                            Text("\(selectColor[index])").tag(index)
                        })
            })
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
