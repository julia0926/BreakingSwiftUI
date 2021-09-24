//
//  MyList.swift
//  SwiftUI_Stack
//
//  Created by 김지인 on 2021/08/03.
//

import SwiftUI

struct MyList: View{
    @Binding var isNavBarHidden: Bool
    
    init(isNavBarHidden: Binding<Bool> = .constant(false)){
        _isNavBarHidden = isNavBarHidden //외부에서 넘어온 값을 넣음
    }

    
    var body: some View{
                
        List {
            Section(
                header: Text("오늘 할 일")
                    .font(.headline).foregroundColor(Color.black)
                ,footer: Text("footer")
            ){
                ForEach(1...3, id: \.self) {itemIndex in
                    MyCard(icon: "bag.circle.fill", title: "쇼핑", start: "1 PM", end: "2 PM", bgColor:Color.green).hideRowSeparator(insets: EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10), background: Color.gray)

                }
            }.listRowInsets(EdgeInsets.init(.init(top: 10, leading: 10, bottom: 10, trailing: 10)))
            
            Section(header: Text("내일 할 일")
                        .font(.headline).foregroundColor(Color.black)){
                ForEach(1...15, id: \.self) {itemIndex in
                    MyCard(icon: "book.fill", title: "책읽기 \(itemIndex)", start: "1 PM", end: "3 PM", bgColor: Color.blue).hideRowSeparator(insets: EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10), background: Color.yellow)
                }
            }.listRowInsets(EdgeInsets.init(.init(top: 10, leading: 10, bottom: 10, trailing: 10)))
            .listRowBackground(Color.orange)
            
        }
        .listStyle(GroupedListStyle())
        .navigationTitle("MY LIST")
        //.navigationBarHidden(self.isNavBarHidden)
        .onAppear{
            self.isNavBarHidden = false //랜더링할 때
        }
    } //네비게이션 뷰
    
    
}


struct MyList_Previews: PreviewProvider {
    static var previews: some View {
        MyList()
    }
}

//리스트의 선 없애는 struct
struct HideRowSeparatorModifier: ViewModifier {
    static let defaultListRowHeight: CGFloat = 44
    
    var insets: EdgeInsets
    var background: Color
    init(insets: EdgeInsets, background: Color){
        self.insets = insets
        
        var alpha: CGFloat = 0
        
        UIColor(background).getWhite(nil, alpha: &alpha)
        assert(alpha == 1, "")
        self.background = background
    }
    
    func body(content: Content) -> some View {
        content
            .padding(insets)
            .frame(
                minWidth: 0, maxWidth: .infinity, minHeight: Self.defaultListRowHeight,   alignment: .leading
            )
            .listRowInsets(EdgeInsets())
            .background(background)
    }
}
extension EdgeInsets{
    static let defaultListRowInsets = Self(top: 10, leading: 10, bottom: 10, trailing: 10)
}
extension View {
    func hideRowSeparator(insets: EdgeInsets = .defaultListRowInsets, background: Color = .white)
    -> some View {
        modifier(HideRowSeparatorModifier(insets: insets, background: background))
    }
}


