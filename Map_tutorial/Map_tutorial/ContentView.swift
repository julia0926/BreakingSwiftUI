//
//  ContentView.swift
//  Map_tutorial
//
//  Created by 김지인 on 2021/09/17.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    @State var myPosition = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: CLLocationDegrees(37.331705), longitude: CLLocationDegrees(-122.030237)), span: MKCoordinateSpan())
    
    var body: some View {
        MyMapView()
//        if #available(iOS 14, *){
//            Map(coordinateRegion: $myPosition)
//        }else {
//            Text("iOS 버전이 13입니다.")
//        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
