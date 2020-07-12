//
//  DisclosureGroup.swift
//  SwiftUI2
//
//  Created by Maxime Parmantier Cloiseau on 28/06/2020.
//

import SwiftUI

struct DisclosureGroupExample: View {
    @State private var revealSecret = false
    
    var body: some View {
        VStack {
            DisclosureGroup(revealSecret ? "Je suis ouvert" : "Montre moi", isExpanded: $revealSecret) {
                ScrollView {
                    Text(LoremText.text)
                        .foregroundColor(.secondary)
                    
                    Button("cache moi") {
                        revealSecret = false
                    }
                    .padding(.top, 34)
                    .foregroundColor(.red)
                }
                .padding()
            }
            .foregroundColor(.blue)
            .padding(.all)
        }
    }
}

struct DisclosureGroupExample_Previews: PreviewProvider {
    static var previews: some View {
        DisclosureGroupExample()
    }
}

struct LoremText {
    public static let text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer elit felis, varius vel ultrices ut, faucibus in quam. Ut ultricies blandit eros, id luctus sapien efficitur sed. Pellentesque tincidunt placerat turpis, at lacinia libero dignissim gravida. Nullam odio odio, fringilla eget dui sed, faucibus lobortis purus. Integer ac tortor eget dui tempor luctus feugiat vitae urna."
}
