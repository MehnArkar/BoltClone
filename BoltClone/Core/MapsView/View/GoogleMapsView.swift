//
//  GoogleMapsView.swift
//  BoltClone
//
//  Created by Arkar Min on 22/12/2024.
//


import SwiftUI
import GoogleMaps

struct GoogleMapsView: UIViewRepresentable {
    
    private let zoom: Float = 15.0
    
    func makeUIView(context: Self.Context) -> GMSMapView {
        let mapsViewOptions = GMSMapViewOptions()
        mapsViewOptions.camera = GMSCameraPosition.camera(withLatitude: -33.86, longitude: 151.20, zoom: 15.0)
        let mapView = GMSMapView.init(options: mapsViewOptions)
        mapView.isMyLocationEnabled = true
        return mapView
    }
    
    func updateUIView(_ mapView: GMSMapView, context: Context) {
        
    }
}
