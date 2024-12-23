//
//  LocationManager.swift
//  BoltClone
//
//  Created by Arkar Min on 23/12/2024.
//

import CoreLocation

class LocationManager: NSObject, ObservableObject{
    private let locationManager: CLLocationManager = CLLocationManager()
    
    static let share = LocationManager()
    @Published var userLocation : CLLocationCoordinate2D?
    
    override init() {
        super.init()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
}

extension LocationManager : CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.first else { return }
        userLocation = location.coordinate
        locationManager.stopUpdatingLocation()
    }
}
    
    
