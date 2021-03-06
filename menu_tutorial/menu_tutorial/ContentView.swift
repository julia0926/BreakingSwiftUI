//
//  ContentView.swift
//  menu_tutorial
//
//  Created by κΉμ§μΈ on 2021/09/24.
//

import SwiftUI

let myPets = ["λ© πΆ","λ₯ π", "μ° π­"]

struct ContentView: View {
    
    @State private var shouldShowAlert : Bool = false
    @State private var myText : String = ""
    @State private var selected : Int = 0
    
    var body: some View {
        NavigationView{
            VStack(spacing: 20){
                Text("\(myPets[selected])").font(.system(size: 60))
                Text("μ°μΈ‘ μλ¨μ !!!λ₯Ό λλ¬μ£ΌμΈμ")
            }
                .padding()
                .navigationTitle("νμ΄")
                .toolbar(content: {
                    ToolbarItem(placement: .navigationBarLeading,
                        content:{
                            Menu(content: {
                                
                                Text("ννν")
                                Button{
                                    print("νμνκΈ° λ²νΌ!")
                                    shouldShowAlert = true
                                    myText = "νμνκΈ°"
                                } label: {
                                    Label("νμνκΈ°", systemImage: "house.fill")
                                }
                                Text("ννν")
                                Text("ννν")
                                Text("ννν")
                                //μΉμμ λλ μ μμ
                                Section{
                                    Button{
                                        print("ννν λ²νΌ!")
                                        shouldShowAlert = true
                                        myText = "ννν"
                                    } label: {
                                        Label("ννν", systemImage: "flame.fill")
                                    }
                                }
                                Picker(selection: $selected, label: Text("μ μλλ¬Ό μ ν")){
                                    ForEach(myPets.indices, id: \.self, content: { index in
                                        Text("\(myPets[index])").tag(index)
                                    })
                                }
                                
                        }, label: {
                            Circle().foregroundColor(Color.init(#colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)))
                                .frame(width: 50, height: 50)
                                .overlay(Label("λλ³΄κΈ°", systemImage: "ellipsis")
                                    .font(.system(size: 30)))
                                    .foregroundColor(.white)
                            
                        })
                    })
                }) //toolbar
                .alert(isPresented: $shouldShowAlert, content: {
                    Alert(title: Text("μλ¦Ό"), message: Text("\(myText)"), dismissButton: .default(Text("νμΈ")))
                })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
