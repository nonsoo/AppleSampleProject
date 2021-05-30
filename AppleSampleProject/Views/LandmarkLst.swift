//
//  LandmarkLst.swift
//  AppleSampleProject
//
//  Created by Nonso Otoh on 2021-05-29.
//

import SwiftUI

struct LandmarkLst: View {
    @State private var showFavouritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        landmarks.filter { landmark in
            (!showFavouritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List{
                Toggle(isOn: $showFavouritesOnly) {
                    Text("Favorites only")
                }
                ForEach(filteredLandmarks){
                    landmark in
                    NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                        LandmarkRow(landmark: landmark)
                    }}
    
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkLst_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkLst()
    }
}

