//
//  LandmarkDetail.swift
//  AppleSampleProject
//
//  Created by Nonso Otoh on 2021-05-29.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark :Landmark
    var body: some View {
        ScrollView {
            mapView(coordinate: landmark.locationCoordinate)
                .frame(height:300).ignoresSafeArea(edges:.top)
            circleImage(image:landmark.image)
                .offset(y:-130)
                .padding(.bottom,-130)
            VStack(alignment:.leading){
                Text(landmark.name)
                    .font(.title)
            
                HStack{
                    Text(landmark.park)

                    Spacer()
                    Text(landmark.state)

                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                Divider()
                Text("About \(landmark.name) ")
                    .font(.title2).padding(.bottom)
                Text(landmark.description)
                
            }
            .padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}
