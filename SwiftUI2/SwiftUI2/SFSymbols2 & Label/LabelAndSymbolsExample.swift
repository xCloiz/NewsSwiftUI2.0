//
//  LabelAndSymbolsExample.swift
//  SwiftUI2
//
//  Created by Maxime Parmantier Cloiseau on 28/06/2020.
//

import SwiftUI

struct LabelAndSymbolsExample: View {
    var body: some View {
        VStack(spacing: 60) {
            //imageScale
            HStack(spacing: 30) {
                Image(systemName: "pencil.tip.crop.circle.badge.plus")
                    .imageScale(.small)
                
                Image(systemName: "pencil.tip.crop.circle.badge.plus")
                    .imageScale(.medium)
                
                Image(systemName: "pencil.tip.crop.circle.badge.plus")
                    .imageScale(.large)
            }
            .foregroundColor(.secondary)
            .font(.largeTitle)
            
            //Original symbol
            Image(systemName: "cloud.sun.rain.fill")
                .renderingMode(.original)
                .imageScale(.large)
                .font(.largeTitle)
                .padding()
                .background(Color.blue)
                .clipShape(RoundedRectangle(cornerRadius: 20))
            
            //Label
            Label("Label avec SF Symbols", systemImage: "highlighter")
                .imageScale(.large)
                .font(.headline)
            
            Label {
                Text("Un label 100% custom")
                    .font(.headline)
                    .foregroundColor(.white)
            } icon: {
                Image(systemName: "externaldrive.badge.wifi")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .imageScale(.medium)
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 20).fill(Color.green))
        }
    }
}

struct LabelAndSymbolsExample_Previews: PreviewProvider {
    static var previews: some View {
        LabelAndSymbolsExample()
    }
}
