//
//  ProgressViewExample.swift
//  SwiftUI2
//
//  Created by Maxime Parmantier Cloiseau on 28/06/2020.
//

import SwiftUI

struct ProgressViewExample: View {
    @State private var installationProgress = 0.0
    
    var body: some View {
        VStack(spacing: 60) {
            ProgressView("Mise à jour en cours")
            
            VStack {
                ProgressView(value: installationProgress, total: 100) {
                    HStack {
                        Image(systemName: "icloud.and.arrow.down")
                        Text("Installation de la mise à jour")
                        
    //                    Label("Installation de la mise à jour", systemImage: "icloud.and.arrow.down")
                    }
                    .font(.title3)
                }
                .padding()
                .foregroundColor(.secondary)
                
                Button("Faire avancer l'installation") {
                    if installationProgress < 100 {
                        installationProgress += 5
                    }
                }
                .padding()
                .foregroundColor(.white)
                .font(.headline)
                .background(RoundedRectangle(cornerRadius: 20).fill(Color.blue))
            }
        }
    }
}

struct ProgressViewExample_Previews: PreviewProvider {
    static var previews: some View {
        ProgressViewExample()
    }
}
