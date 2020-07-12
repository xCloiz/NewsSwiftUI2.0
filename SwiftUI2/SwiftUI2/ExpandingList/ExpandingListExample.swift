//
//  ExpandingListExample.swift
//  SwiftUI2
//
//  Created by Maxime Parmantier Cloiseau on 28/06/2020.
//

import SwiftUI

struct SimpleListItem: Identifiable {
    let id = UUID()
    
    let name: String
    var items: [SimpleListItem]?
    var isParent: Bool {
        return items != nil
    }
}

struct ExpandingListExample: View {
    private let items = [
        SimpleListItem(name: "Parent 1", items: [SimpleListItem(name: "enfant 1"), SimpleListItem(name: "enfant 2"), SimpleListItem(name: "enfant 3")]),
        SimpleListItem(name: "Parent 2", items: [SimpleListItem(name: "enfant 1"), SimpleListItem(name: "enfant 2")])
    ]
    
    var body: some View {
        List(items, children: \.items) { item in
            Text(item.name)
                .foregroundColor(item.isParent ? .red : .blue)
                .font(item.isParent ? .headline : .body)
        }
    }
}

struct ExpandingListExample_Previews: PreviewProvider {
    static var previews: some View {
        ExpandingListExample()
    }
}
