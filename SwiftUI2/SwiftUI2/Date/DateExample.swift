//
//  DateView.swift
//  SwiftUI2
//
//  Created by Maxime Parmantier Cloiseau on 28/06/2020.
//

import SwiftUI

struct DateExample: View {
    @State private var date: Date = Date()
    
    var body: some View {
        VStack {
            Text("Séléctionnez une date")
                .font(.largeTitle)
            
            Spacer()

            Text(date, style: .date)
            Text(date, style: .time)
            
            Text(date.addingTimeInterval(1000), style: .timer)
            
            Text(date.addingTimeInterval(1000), style: .relative)
            
            DatePicker("Enter your birthday", selection: $date)
                .datePickerStyle(GraphicalDatePickerStyle())
                .labelsHidden()
                .frame(maxHeight: 400)
                .padding()
            
            Spacer()
        }
    }
}

struct DateExample_Previews: PreviewProvider {
    static var previews: some View {
        DateExample()
    }
}
