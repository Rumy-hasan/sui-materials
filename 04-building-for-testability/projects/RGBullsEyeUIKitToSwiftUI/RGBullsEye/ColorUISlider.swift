//
//  ColorUISlider.swift
//  RGBullsEyeUIKitToSwiftUI
//
//  Created by Paradox Space Rumy M1 on 25/8/21.
//

import SwiftUI
import UIKit

struct ColorUISlider: UIViewRepresentable {
    func makeUIView(context: Context) -> UISlider {
        let slider = UISlider(frame: .zero)
        return slider
    }
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}

struct ColorUISlider_Previews: PreviewProvider {
    static var previews: some View {
        ColorUISlider()
    }
}
