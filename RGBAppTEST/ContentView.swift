//
//  ContentView.swift
//  RGBAppTEST
//
//  Created by Валерия Дементьева on 09.08.2023.
//

import SwiftUI

struct ContentView: View {
    // свойства для хранения компонентов цвета
    @State var redComponent: Double = 0.5
    @State var greenComponent: Double = 0.5
    @State var blueComponent: Double = 0.5
    var body: some View {
        VStack{
            Text("Передвиньте ползунок!")
                .font(.largeTitle)
                .fontWeight(.regular)
                .foregroundColor(Color.blue)
            Slider(value: $redComponent)
            Slider(value: $greenComponent)
            Slider(value: $blueComponent)
            ZStack{
                Circle()
                    .foregroundColor(Color(red: redComponent, green: greenComponent, blue: blueComponent))
                Circle()
                    .frame(width: 300.0, height: 300.0)
                    .foregroundColor(Color(red: redComponent, green: greenComponent, blue: blueComponent))
                    .colorInvert()
                Circle()
                    .frame(width: 220.0, height: 220.0)
                    .foregroundColor(Color(red: redComponent, green: greenComponent, blue: blueComponent))
                Circle()
                    .frame(width: 120.0, height: 120.0)
                    .foregroundColor(Color(red: redComponent, green: greenComponent, blue: blueComponent))
                    .colorInvert()
                Circle()
                    .frame(width: 50.0, height: 50.0)
                    .foregroundColor(Color(red: redComponent, green: greenComponent, blue: blueComponent))
            }
            Button(action: {
                redComponent = 0.5
                greenComponent = 0.5
                blueComponent = 0.5
            }) {
                Text("Сбросить изменения")
                    .font(.system(size: 20))
                    .fontWeight(.regular)
                    .foregroundColor(Color.blue)
            }
            .padding(EdgeInsets(top: 12, leading: 24, bottom: 12, trailing: 24))
            .foregroundColor(.blue)
            .background(Capsule().stroke(.blue, lineWidth: 2))
            .padding(.vertical, 40.0)
        }
        .padding(.all, 10.0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//struct SecondContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        Text("Second Screen")
//    }
//}
