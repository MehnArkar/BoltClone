//
//  AppDelegate.swift
//  BoltClone
//
//  Created by Arkar Min on 22/12/2024.
//

import SwiftUI
import GoogleMaps

class AppDelegate: NSObject, UIApplicationDelegate {
    let GOOGLE_API_KEY = "AIzaSyChqL7S_xRF3EcLf6ailQ1lK3lGnPRkHlA"
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        GMSServices.provideAPIKey(GOOGLE_API_KEY)
        return true
    }
}
