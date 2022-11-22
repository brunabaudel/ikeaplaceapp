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

//            UICamViewController()
//                .ignoresSafeArea()
//                .tabItem {
//                    Image(systemName: "viewfinder")
//                }
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                }
                
        }
    }
}
