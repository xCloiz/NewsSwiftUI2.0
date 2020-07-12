////
////  LazyHStack.swift
////  SwiftUI2
////
////  Created by Maxime Parmantier Cloiseau on 27/06/2020.
////
//
//import SwiftUI
//
//struct LazyHStackExample: View {
//    var body: some View {
//        ScrollView(.horizontal) {
//            VStack {
//                //Tous les item se chargent dés le chargement de la vue
//                //La vue est de type pull-in (la taille dépend des éléments enfants)
//                HStack {
//                    ForEach(1...1000, id: \.self) { number in
//                        SimpleStackItem(number: number)
//                    }
//                }
//                .background(Color.green)
//                
//                //Seuls les items visible à l'écran se charge
//                //La vue est de type push-out (elle prend le maximum de place disponible)
//                LazyHStack {
//                    ForEach(1...1000, id: \.self) { number in
//                        SimpleStackItem(number: number)
//                    }
//                }
//                .background(Color.blue)
//            }
//        }
//    }
//}
//
//struct LazyHStackExample_Previews: PreviewProvider {
//    static var previews: some View {
//        LazyHStackExample()
//    }
//}
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
