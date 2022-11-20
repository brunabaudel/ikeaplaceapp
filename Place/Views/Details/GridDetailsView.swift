//
//  GridViewDetailsView.swift
//  Place
//
//  Created by Bruna Baudel on 20/11/2022.
//

import SwiftUI

struct GridDetailsView: View {
    
    var items: [GridItemModel]
    var imageSize: CGFloat
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        LazyVGrid(columns: columns) {
            ForEach(items) { item in
                NavigationLink(destination: ItemDetails(item: item, imageSize: imageSize)) {
                    ItemGridDetailsView(item: item, imageSize: imageSize - 42)
                }
                .navigationTitle("")
            }
        }
    }
}

//struct GridDetailsView_Previews: PreviewProvider {
//    static var previews: some View {
//        GridDetailsView()
//    }
//}
