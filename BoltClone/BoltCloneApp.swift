//
//  BoltCloneApp.swift
//  BoltClone
//
//  Created by Arkar Min on 22/12/2024.
//

import SwiftUI
import GoogleMaps

@main
struct BoltCloneApp: App {
    let GOOGLE_API_KEY = "AIzaSyChqL7S_xRF3EcLf6ailQ1lK3lGnPRkHlA"
    
    init(){
        GMSServices.provideAPIKey(GOOGLE_API_KEY)
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
