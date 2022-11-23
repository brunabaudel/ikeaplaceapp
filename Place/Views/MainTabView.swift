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
                        .accessibilityLabel("Browse categories and room sets")
                }
                
            ARView()
                .tabItem {
                    Image(systemName: "viewfinder")
                        .accessibilityLabel("Scan furniture")
                }
                
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                        .accessibilityLabel("Profile")
                }
        }
    }
}
