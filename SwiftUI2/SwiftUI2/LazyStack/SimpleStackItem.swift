//
//  SimpleItem.swift
//  SwiftUI2
//
//  Created by Maxime Parmantier Cloiseau on 27/06/2020.
//

import SwiftUI

struct SimpleStackItem: View {
    var body: some View {
        Text("Hello World !")
    }
}

struct SimpleStackItem_Previews: PreviewProvider {
    static var previews: some View {
        SimpleStackItem()
    }
}













































//struct SimpleStackItem: View {
//    let number: Int
//
//    var body: some View {
//        RoundedRectangle(cornerRadius: 15)
//            .fill(Color.secondary)
//            .overlay(Text("item \(number)").foregroundColor(.white))
//            .frame(width: 100, height: 80)
//    }
//
//    init(number: Int) {
//        self.number = number
//
//        print("L'élément \(number) est chargé")
//    }
//}
