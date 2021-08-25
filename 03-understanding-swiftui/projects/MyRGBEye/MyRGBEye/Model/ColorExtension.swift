//
//  ColorExtension.swift
//  MyRGBEye
//
//  Created by Paradox Space Rumy M1 on 25/8/21.
//

import Foundation
import SwiftUI

extension Color{
    init(rgbStruct rgb: RGB) {
      self.init(red: rgb.red, green: rgb.green, blue: rgb.blue)
    }

    // Add Neumorphism colors to standard colors
    static let element = Color("Element")
    static let highlight = Color("Highlight")
    static let shadow = Color("Shadow")
}
