//
//  LandmarkLst.swift
//  AppleSampleProject
//
//  Created by Nonso Otoh on 2021-05-29.
//

import SwiftUI

struct LandmarkLst: View {
    var body: some View {
        NavigationView{
            List(landmarks) { landmark in
                NavigationLink(destination: LandmarkDetail()){
                    LandmarkRow(landmark: landmark)
                }
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
