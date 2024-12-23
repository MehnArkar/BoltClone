//
//  GoogleMapsView.swift
//  BoltClone
//
//  Created by Arkar Min on 22/12/2024.
//


import SwiftUI
import GoogleMaps
import CoreLocation

struct GoogleMapsView: UIViewRepresentable {
    
    @StateObject var locationManager = LocationManager.share
    
    private let zoom: Float = 15.0
    
    
    func makeUIView(context: Self.Context) -> GMSMapView {
        let mapsViewOptions = GMSMapViewOptions()
        mapsViewOptions.camera = GMSCameraPosition.camera(withLatitude: -33.86, longitude: 151.20, zoom: zoom)
        let mapView = GMSMapView.init(options: mapsViewOptions)
        mapView.isMyLocationEnabled = true
        mapView.settings.myLocationButton = true
        return mapView
    }
    
    func updateUIView(_ mapView: GMSMapView, context: Context) {
        if let location = locationManager.userLocation {
            let userCameraView = GMSCameraPosition.camera(withLatitude: location.latitude, longitude: location.longitude, zoom: zoom)
            mapView.animate(to: userCameraView)
        }
        
    }
}
