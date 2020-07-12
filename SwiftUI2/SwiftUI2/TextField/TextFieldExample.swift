//
//  TextFieldExample.swift
//  SwiftUI2
//
//  Created by Maxime Parmantier Cloiseau on 28/06/2020.
//

import SwiftUI

struct TextFieldExample: View {
    @State private var lowerCaseText: String = ""
    @State private var upperCaseText: String = ""
    @State private var customCaseText: String = ""
    
    var body: some View {
        VStack {
            TextField("TOUT EN MINUSCULE", text: $lowerCaseText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .textCase(.lowercase)
            
            TextField("tout en majuscule", text: $upperCaseText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .textCase(.uppercase)
            
            TextField("Format personnalisé", text: $customCaseText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .onChange(of: customCaseText) { value in
                    var isUpper = true
                    var ret = ""
                    customCaseText.forEach { (c) in
                        ret.append(isUpper ? c.uppercased() : c.lowercased())
                        
                        isUpper.toggle()
                    }
                    customCaseText = ret
                }
            
            Spacer()
        }
        .padding()
    }
}

struct TextFieldExample_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldExample()
    }
}
