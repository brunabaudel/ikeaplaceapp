//
//  ItemDetails.swift
//  Place
//
//  Created by Bruna Baudel on 20/11/2022.
//

import SwiftUI

struct CategoryItemDetailsView: View {
    
    var item: GridItemModel
    var imageSize: CGFloat
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            
            ScrollView {
                VStack(alignment: .leading) {
                    
                    Image(item.image)
                        .resizable()
                        .frame(width: imageSize, height: imageSize + (imageSize / 4))
                        .aspectRatio(contentMode: .fit)
                    
                    ItemDetailsView(item: item)
                        .padding(16)
                        .padding(.bottom, 32)
                    
                    Divider()
                        .padding(.bottom, 32)
                    
                    SuggestedItemsView(imageSize: imageSize)
                    
                }
            }
            .ignoresSafeArea()
            .padding(.bottom, 2)
            
            ARButtonView(item: item)
                .padding()
        }
    }
}
