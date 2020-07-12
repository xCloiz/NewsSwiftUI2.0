//
//  ColorPickerExample.swift
//  SwiftUI2
//
//  Created by Maxime Parmantier Cloiseau on 28/06/2020.
//

import SwiftUI

struct ColorPickerExample: View {
    @State private var iconColor: Color = .blue
    
    var body: some View {
        VStack(spacing: 60) {
            Image(systemName: "circle.dashed.inset.fill")
                .resizable()
                .frame(width: 100.0, height: 100.0)
                .imageScale(.large)
                .foregroundColor(iconColor)

            ColorPicker("couleur", selection: $iconColor, supportsOpacity: false)
            .foregroundColor(iconColor)
            .font(.headline)
            .frame(width: 200, height: 50)
            .padding()
        }
    }
}

struct ColorPickerExample_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerExample()
    }
}
