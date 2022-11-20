//
//  ListItemDetailsView.swift
//  Place
//
//  Created by Bruna Baudel on 20/11/2022.
//

import SwiftUI

struct ItemGridDetailsView: View {
    
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
                .foregroundColor(.black)
                .padding(.bottom, 0.5)
            
            Text(item.description.lowercased())
                .font(.footnote)
                .fontWeight(.light)
                .foregroundColor(.black)
                .padding(0)

            Text(item.formatPrice)
                .font(.footnote)
                .fontWeight(.light)
                .foregroundColor(.gray)
                .padding(.bottom, 62)
        }
    }
}

//struct ItemGridDetailsView_Previews: PreviewProvider {
//    static var previews: some View {
//        ItemGridDetailsView()
//    }
//}
