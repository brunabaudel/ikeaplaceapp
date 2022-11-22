//
//  PlaceApp.swift
//  Place
//
//  Created by Bruna Baudel on 18/11/2022.
//

import SwiftUI

@main
struct PlaceApp: App {
    
    var body: some Scene {
        WindowGroup {
            MainTabView()
                .ignoresSafeArea()
        }
    }
}
