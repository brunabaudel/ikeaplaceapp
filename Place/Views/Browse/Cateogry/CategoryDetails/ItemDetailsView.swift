//
//  ItemDetailsView.swift
//  Place
//
//  Created by Bruna Baudel on 21/11/2022.
//

import SwiftUI

struct ItemDetailsView: View {
    
    var item: GridItemModel
    @State var isFavorite: Bool = false
    
    var body: some View {
        VStack(alignment: .leading) {
            Button {
                isFavorite.toggle()
            } label: {
                Image(systemName: isFavorite ? "heart.fill" : "heart")
                    .foregroundColor(isFavorite ? .red : .blue)
                    .padding(4)
            }
            
            Text(item.title.uppercased())
                .font(.title2)
                .bold()
                .fontWeight(.ultraLight)
                .padding(.bottom, 2)
            
            Text(item.details)
                .font(.subheadline)
                .fontWeight(.light)
                .padding(.bottom, 1)
            
            Text(item.description.lowercased())
                .font(.subheadline)
                .fontWeight(.light)
                .padding(.bottom, 2)
            
            Text(item.formatPrice)
                .font(.subheadline)
                .fontWeight(.light)
                .foregroundColor(.gray)
                .padding(.bottom, 16)
            
            Text(item.serialNumber)
                .padding(.horizontal, 12)
                .padding(.vertical, 6)
                .font(.subheadline)
                .fontWeight(.light)
                .foregroundColor(.gray)
                .background(.gray.opacity(0.1))
        }
    }
}
