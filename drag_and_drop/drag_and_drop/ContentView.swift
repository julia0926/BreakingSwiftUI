//
//  ContentView.swift
//  drag_and_drop
//
//  Created by 김지인 on 2021/10/06.
//

import SwiftUI

struct DataItem : Hashable, Identifiable {
    var id: UUID
    var title: String
    var color: Color
    
    init(title: String, color: Color){
        self.id = UUID()
        self.title = title
        self.color = color 
    }
}

struct ContentView: View {
    //값이 변화되는 데이터리스트
    @State var dataList = [
        DataItem(title: "1번", color: .yellow),
        DataItem(title: "2번", color: .green),
        DataItem(title: "3번", color: .orange)
    ]
    // 드래그 한 아이템
    @State var draggedItem: DataItem?
    // 수정모드 토글 
    @State var isEditModeOn: Bool = false
    
    var body: some View {
        Toggle("수정모드:", isOn: $isEditModeOn) //토글로 수정여부 바뀜
        LazyVStack{ //ScrollView로 감싸도 됨
            ForEach(dataList, id:\.self){ dataItem in
                Text(dataItem.title)
                    .frame(maxWidth: .infinity, minHeight: 50)
                    .background(dataItem.color)
                    .onDrag{
                        self.draggedItem = dataItem
                        return NSItemProvider(item: nil, typeIdentifier: dataItem.title)
                    }
                    .onDrop(of: [dataItem.title], delegate: MyDropDelegate(currentItem: dataItem, dataList: $dataList, draggedItem: $draggedItem, isEditModeOne: $isEditModeOn))
            }
        }
        .onChange(of: isEditModeOn, perform: { changedEditMode in
            print("변경된 수정모드 : \(changedEditMode)")
        })
    }
}

struct MyDropDelegate : DropDelegate {
    
    let currentItem: DataItem //현재 아이템
    @Binding var dataList: [DataItem]
    @Binding var draggedItem: DataItem? //드래그가 되고 있는 아이템
    
    @Binding var isEditModeOne: Bool
    
    //드랍에서 벗어났을 때
    func dropExited(info: DropInfo) {
        print("dropExited!")
    }
    
    //드랍 처리
    func performDrop(info: DropInfo) -> Bool {
        return true
    }
    //드랍 변경
    func dropUpdated(info: DropInfo) -> DropProposal? {
        return nil
    }
    //드랍 유효 여부
    func validateDrop(info: DropInfo) -> Bool {
        return true
    }
    //드랍 시작
    func dropEntered(info: DropInfo) {
        
        if !isEditModeOne { return }
        
        guard let draggedItem = self.draggedItem else {
            return
        }
        // 드래깅 된 아이템이랑 현재 내 아이템과 다르면 변경
        if draggedItem != currentItem{
            let from = dataList.firstIndex(of: draggedItem)!
            let to = dataList.firstIndex(of: currentItem)! //false로
            withAnimation {
                self.dataList.move(fromOffsets: IndexSet(integer: from), toOffset: to > from ? to + 1 : to)
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
