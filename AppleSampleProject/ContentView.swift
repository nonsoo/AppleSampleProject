//
//  ContentView.swift
//  AppleSampleProject
//
//  Created by Nonso Otoh on 2021-05-29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment:.leading){
            Text("Turtule Rock")
                .font(.title)
        
            HStack{
                Text("Joshua Tree National Park")
                    .font(.subheadline)
                Spacer()
                Text("California")
                    .font(.subheadline)
             
                
            }
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
