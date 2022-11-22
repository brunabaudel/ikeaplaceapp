//
//  ARButtonView.swift
//  Place
//
//  Created by Bruna Baudel on 21/11/2022.
//

import SwiftUI

struct ARButtonView: View {
    
    var action: () -> ()
    
    var body: some View {
        Button(action: {
            action()
        }) {
            ZStack {
                Circle()
                    .foregroundColor(.blue)
                    .frame(width: 55, height: 55)
                Image(systemName: "arkit")
                    .imageScale(.large)
                    .foregroundColor(.white)
            }
            .shadow(color: .gray, radius: 0.6, x: 1, y: 1)
        }
    }
}
