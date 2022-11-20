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
        VStack {
            ZStack(alignment: .bottomLeading) {
                Image(item.image)
                    .resizable()
                    .frame(width: imageSize, height: imageSize)
                    .aspectRatio(contentMode: .fit)
                    
                Text(item.name)
                    .font(.title)
                    .foregroundColor(.white)
                    .fontWeight(.light)
                    .padding(22)
            }
        }
    }
}

struct ItemMainListView_Previews: PreviewProvider {
    static var previews: some View {
        ItemMainListView(item: ListItemModel(name: "Chairs", image: "chairs"), imageSize: 350.0)
    }
}
