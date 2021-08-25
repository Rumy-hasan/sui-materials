//
//  ContentView.swift
//  RGBullsEyeUsingUikitInSwiftUIProject
//
//  Created by Paradox Space Rumy M1 on 25/8/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink(
                    destination: ViewControllerRepresentation(),
                    label: {
                        Text("Play bulseye!")
                    }).padding(.bottom)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
