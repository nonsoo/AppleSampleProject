//
//  mapView.swift
//  AppleSampleProject
//
//  Created by Nonso Otoh on 2021-05-29.
//

import SwiftUI
import MapKit

struct mapView: View {
//    This state variable hold the region of where the park is
    // State variable establish a source of truth for the app that can be
    // modified by any view.
    // Memory management is done automatically.
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
    var body: some View {
        // $ symbol for a state variable allows us to reference the
        // underlying value for that variable
        Map(coordinateRegion: $region)
    }
}

struct mapView_Previews: PreviewProvider {
    static var previews: some View {
        mapView()
    }
}
