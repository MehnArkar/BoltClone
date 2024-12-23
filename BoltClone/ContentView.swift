//
//  ContentView.swift
//  BoltClone
//
//  Created by Arkar Min on 22/12/2024.
//

import SwiftUI
import SVGKit

struct ContentView: View {
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor.white
    }
    
    var body: some View {
        
        TabView(){
            HomeView()
                .tabItem {
                    Image(uiImage: UIImage(named: "home_icon")!)
                        .foregroundStyle(.gray)
                    Text("Home")
                }
                .tag(0)
            
            MyRidesView()
                .tabItem {
                    
                    Image(uiImage: UIImage(named: "calendar_icon")!)
                        .foregroundStyle(.gray)
                    Text("Rides")
                }
                .tag(1)
            
            AccountView()
                .tabItem {
                    Image(systemName:"person.circle")
                        .foregroundStyle(.gray)
                    Text("Account")
                }
                .tag(2)
        }
        .tint(.black)
        
    }
}

#Preview {
    ContentView()
}

