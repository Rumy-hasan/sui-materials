//
//  ColorCircle.swift
//  MyRGBEye
//
//  Created by Paradox Space Rumy M1 on 25/8/21.
//

import SwiftUI

/*
struct ColorCircle: View {
    let color: RGB
    let size: CGFloat
    
    var body: some View{
        ZStack{
            Circle()
                .fill(Color.element)
                .northWestShadow()
            Circle()
                .fill(Color(red: color.red, green: color.green, blue: color.blue))
                .padding(20)
        }.frame(width: size, height: size)
    }
}


struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: RGB(), size: 200)
    }
}
*/


struct ColorCircle: View {
  let rgb: RGB
  let size: CGFloat

  var body: some View {
    ZStack {
      Circle()
        .fill(Color.element)
        .northWestShadow()
      Circle()
        .fill(Color(red: rgb.red, green: rgb.green, blue: rgb.blue))
        .padding(20)
    }
    .frame(width: size, height: size)
  }
}

struct ColorCircle_Previews: PreviewProvider {
  static var previews: some View {
    ZStack {
      Color.element
      ColorCircle(rgb: RGB(), size: 200)
    }
    .frame(width: 300, height: 300)
    .previewLayout(.sizeThatFits)
  }
}
