//
//  ListItemView.swift
//  Place
//
//  Created by Bruna Baudel on 19/11/2022.
//

import SwiftUI

struct ItemMainListView: View {
    
    var item: ListItemModel
    var imageSize: CGFloat
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Image(item.image)
                .resizable()
                .frame(width: imageSize, height: imageSize)
                .aspectRatio(contentMode: .fit)
                .accessibilityElement(children: .ignore)
//              .accessibilityLabel(item.imageDescription)
                
            Text(item.name.capitalized)
                .font(.title)
                .foregroundColor(.white)
                .bold()
                .fontWeight(.light)
                .padding(22)
                .accessibilityLabel("category \(item.name)")
        }
    }
}
