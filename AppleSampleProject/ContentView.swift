//
//  ContentView.swift
//  AppleSampleProject
//
//  Created by Nonso Otoh on 2021-05-29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            mapView().frame(height:300).ignoresSafeArea(edges:.top)
            circleImage()
                .offset(y:-130)
                .padding(.bottom,-130)
            VStack(alignment:.leading){
                Text("Turtule Rock")
                    .font(.title)
            
                HStack{
                    Text("Joshua Tree National Park")

                    Spacer()
                    Text("California")

                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                Divider()
                Text("About Turtule Rock ")
                    .font(.title2).padding(.bottom)
                Text("This is going to be some descriptive text that goes here")
                
            }
            .padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
