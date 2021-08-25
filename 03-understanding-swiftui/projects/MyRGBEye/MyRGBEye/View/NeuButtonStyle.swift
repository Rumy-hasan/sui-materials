//
//  NeuButtonStyle.swift
//  MyRGBEye
//
//  Created by Paradox Space Rumy M1 on 25/8/21.
//

import SwiftUI

struct NeuButtonStyle: ButtonStyle {
    var width:  CGFloat
    var height: CGFloat
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
          .opacity(configuration.isPressed ? 0.2 : 1)
          .frame(width: width, height: height)
          .background(
            Group {
              if configuration.isPressed {
                Capsule()
                  .fill(Color.element)
                  .southEastShadow()
              } else {
                Capsule()
                  .fill(Color.element)
                  .northWestShadow()
              }
            }
          )
    }
}
