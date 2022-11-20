//
//  SuggestedItemsView.swift
//  Place
//
//  Created by Bruna Baudel on 20/11/2022.
//

import SwiftUI

struct SuggestedItemsView: View {
    
    var imageSize: CGFloat
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("You might also like")
                .font(.title2)
                .fontWeight(.light)
                .padding()
            
            GridDetailsView(items: suggestions, imageSize: imageSize)
                .padding(.horizontal, 16)
        }
    }
}
