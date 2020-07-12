//
//  ToolbarExxample.swift
//  SwiftUI2
//
//  Created by Maxime Parmantier Cloiseau on 28/06/2020.
//

import SwiftUI

struct ToolbarExample: View {
    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "iphone")
                    .font(.largeTitle)
                    .imageScale(.large)
                    .foregroundColor(.secondary)
                Text("Ajouter une toolbar sous SwiftUI 2.0")
            }
            .navigationTitle("Toolbar")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "gearshape.fill")
                        .font(.title2)
                        .imageScale(.large)
                        .foregroundColor(.secondary)
                }
                ToolbarItem(placement: .bottomBar) {
                    HStack(spacing: 40) {
                        Button("Bouton 1") {
                            print("Pressed")
                        }
                        .padding()
                        .foregroundColor(Color.white)
                        .background(Color.blue)
                        
                        Button("Bouton 2") {
                            print("supprimer")
                        }
                        .padding()
                        .foregroundColor(Color.white)
                        .background(Color.red)
                    }
                }
            }
        }
    }
}

struct ToolbarExample_Previews: PreviewProvider {
    static var previews: some View {
        ToolbarExample()
    }
}
