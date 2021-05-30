//
//  AppleSampleProjectApp.swift
//  AppleSampleProject
//
//  Created by Nonso Otoh on 2021-05-29.
//

import SwiftUI

@main
struct AppleSampleProjectApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
