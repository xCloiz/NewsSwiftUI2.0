////
////  ScrollViewReaderExample.swift
////  SwiftUI2
////
////  Created by Maxime Parmantier Cloiseau on 28/06/2020.
////
//
//import SwiftUI
//
//struct ScrollViewReaderExample: View {
//    var body: some View {
//        ScrollViewReader { value in
//            ZStack {
//                VStack {
//                    Spacer()
//                    
//                    HStack {
//                        Spacer()
//                        
//                        Button("item 44") {
//                            value.scrollTo(44)
//                        }
//                    }
//                }
//                
//                ScrollView(showsIndicators: false) {
//                    ForEach(1...50, id: \.self) { number in
//                        SimpleStackItem(number: number)
//                    }
//                }
//            }
//            .padding()
//        }
//    }
//}
//
//struct ScrollViewReaderExample_Previews: PreviewProvider {
//    static var previews: some View {
//        ScrollViewReaderExample()
//    }
//}
