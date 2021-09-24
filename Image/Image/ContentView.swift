//
//  ContentView.swift
//  Image
//
//  Created by 김지인 on 2021/07/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                
                Image("star")
                    .frame(height: 40)
                    .offset(y: -1900)
                  
                
                CircleImageView()
                    .padding(30)
                HStack{
                    NavigationLink(destination: MyWebView(urlToLoad: "https://julia1281.tistory.com/")
                                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        ){
                        Text("My Blog")
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .padding()
                            .background(Color.orange)
                            .cornerRadius(30)
                    }
                    NavigationLink(destination: MyWebView(urlToLoad: "https://www.instagram.com/zze_en/")
                                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    ){
                        Text("Instagram")
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .padding()
                            .background(Color.pink)
                            .cornerRadius(30)
                            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)

                    }
                        
                } //Hstack
                .padding(50)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
