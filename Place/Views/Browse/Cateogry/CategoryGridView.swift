//
//  CategoryGridView.swift
//  Place
//
//  Created by Bruna Baudel on 20/11/2022.
//

import SwiftUI

struct CategoryGridView: View {
    
    var items: [GridItemModel]
    var imageSize: CGFloat
        
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        LazyVGrid(columns: columns) {
            ForEach(items) { item in
                NavigationLink(destination: CategoryItemDetailsView(item: item, imageSize: imageSize)) {
                    CategoryItemGridView(item: item, imageSize: imageSize - 42)
                }
                .navigationTitle("")
            }
        }
    }
}
