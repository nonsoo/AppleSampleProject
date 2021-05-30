//
//  circleImage.swift
//  AppleSampleProject
//
//  Created by Nonso Otoh on 2021-05-29.
//

// Instead of putting the in the main app, we have created a seperate
// file to hold and create the image asset
import SwiftUI

struct circleImage: View {
    var image: Image
    
    var body: some View {
        // here We are createing an image view that shows the picture of the park
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct circleImage_Previews: PreviewProvider {
    static var previews: some View {
        circleImage(image: Image("turtlerock"))
    }
}
