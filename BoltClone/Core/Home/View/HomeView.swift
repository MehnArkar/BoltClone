//
//  HomeView.swift
//  BoltClone
//
//  Created by Arkar Min on 23/12/2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        GoogleMapsView()
            .ignoresSafeArea(edges:.top)
    }
}

#Preview {
    HomeView()
}
