//
//  MainTabView.swift
//  Place
//
//  Created by Bruna Baudel on 21/11/2022.
//

import SwiftUI

struct MainTabView: View {
    
    var body: some View {
        
        TabView {
            BrowseView()
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                }
                .accessibilityElement()
                .accessibilityLabel(Text("Browse tab"))

            ARView()
                .tabItem {
                    Image(systemName: "viewfinder")
                }
                .accessibilityElement()
                .accessibilityLabel(Text("Scan tab"))
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                }
                .accessibilityElement()
                .accessibilityLabel(Text("Profile tab"))
        }
        .accessibilityElement()
        .accessibilityLabel(Text(""))
    }
}
