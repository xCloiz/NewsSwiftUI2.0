//
//  MapExample.swift
//  SwiftUI2
//
//  Created by Maxime Parmantier Cloiseau on 28/06/2020.
//

import SwiftUI
import MapKit

extension MKPointAnnotation: Identifiable {}

struct MapExample: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 44.8333, longitude: -0.5667), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    
    var body: some View {
        Map(coordinateRegion: $region)
        .edgesIgnoringSafeArea(.all)
    }
}

struct MapExample_Previews: PreviewProvider {
    static var previews: some View {
        MapExample()
    }
}
