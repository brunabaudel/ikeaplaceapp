//
//  ListItemDetailsView.swift
//  Place
//
//  Created by Bruna Baudel on 20/11/2022.
//

import SwiftUI

struct CategoryItemGridView: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var item: GridItemModel
    var imageSize: CGFloat
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(item.image)
                .resizable()
                .frame(width: imageSize / 2, height: imageSize / 2)
                .aspectRatio(contentMode: .fit)
                
            Text(item.title.uppercased())
                .font(.body)
                .bold()
                .fontWeight(.light)
                .foregroundColor(colorScheme  == .dark ? .white : .black)
                .padding(.bottom, 0.5)
            
            Text(item.description.lowercased())
                .font(.footnote)
                .fontWeight(.light)
                .foregroundColor(colorScheme  == .dark ? .white : .black)
                .padding(0)

            Text(item.formatPrice)
                .font(.footnote)
                .fontWeight(.light)
                .foregroundColor(.gray)
                .padding(.bottom, 62)
        }
    }
}
