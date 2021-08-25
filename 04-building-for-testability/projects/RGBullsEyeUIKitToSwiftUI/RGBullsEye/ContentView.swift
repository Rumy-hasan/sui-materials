//
//  ContentView.swift
//  RGBullsEye
//
//  Created by Paradox Space Rumy M1 on 25/8/21.
//

import SwiftUI

struct ColorProvider{
    var red = 0.5
    var green = 0.5
    var blue = 0.5
    static func randomColor() -> Color {
        var color = ColorProvider()
        color.red = Double.random(in: 0..<1)
        color.green = Double.random(in: 0..<1)
        color.blue = Double.random(in: 0..<1)
        return Color(red: color.red, green: color.green, blue: color.blue)
    }
}

struct ContentView: View {
    let targetColor = ColorProvider.randomColor()
    @State var guess = ColorProvider()
    @State var showResult = false
    var body: some View {
        VStack{
            HStack{
                VStack{
                    targetColor
                    Text("Hello, World!")
                }
                VStack{
                    Color(red: guess.red, green: guess.green, blue: guess.blue)
                    Text("Hello, World!")
                }
            }
            VStack{
                SlideView(trackColor: .red, value: $guess.red)
                SlideView(trackColor: .green, value: $guess.green)
                SlideView(trackColor: .blue, value: $guess.blue)
            }.padding(.horizontal)
            
            Button("Hit me!") {
                self.showResult = true
            }.alert(isPresented: $showResult){
                Alert(title: Text("test"), message: Text("result is dummy"), dismissButton: .cancel())
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct SlideView: View {
    var trackColor: Color
    @Binding var value: Double
    var body: some View{
        HStack{
            Text("0").foregroundColor(trackColor)
            Slider(value: $value)
            Text("255").foregroundColor(trackColor)
        }
    }
}
