//
//  ARButtonView.swift
//  Place
//
//  Created by Bruna Baudel on 21/11/2022.
//

import SwiftUI

struct ARButtonView: View {
    
    @State private var isPresented = false
    var item: GridItemModel?
    
    var body: some View {

        Button(action: {
            isPresented.toggle()
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
        .fullScreenCover(isPresented: $isPresented) {
            ARView(item: item)
        }
    }
}
