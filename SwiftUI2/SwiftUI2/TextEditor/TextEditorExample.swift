//
//  TextEditorExample.swift
//  SwiftUI2
//
//  Created by Maxime Parmantier Cloiseau on 28/06/2020.
//

import SwiftUI

struct TextEditorExample: View {
    @State private var text: String = "Ecrivez du long texte"
    @State private var isPlaceholderShown: Bool = true
    
    var body: some View {
        VStack {
            TextEditor(text: $text)
                .padding()
                .foregroundColor(.secondary)
                .font(.callout)
                .border(Color.black, width: 1)
                .frame(maxHeight: 350)
                .lineSpacing(20)
        }
        .padding()
    }
}

struct TextEditorExample_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TextEditorExample()
            TextEditorExample()
        }
    }
}
