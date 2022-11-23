//
//  CategoryDetails.swift
//  Place
//
//  Created by Bruna Baudel on 20/11/2022.
//

import SwiftUI

struct CategoryDetailsView: View {
    var listItemModel: ListItemModel
    var imageSize: CGFloat
        
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Image(listItemModel.image)
                    .resizable()
                    .frame(width: imageSize, height: imageSize)
                    .aspectRatio(contentMode: .fit)

                Text("feature".uppercased())
                    .foregroundColor(.gray)
                    .font(.subheadline)
                    .fontWeight(.light)
                    .padding(.horizontal)
                    .padding(.top, 8)
                    .padding(.bottom, 1)
                
                Text(listItemModel.name.capitalized)
                    .font(.title)
                    .fontWeight(.light)
                    .padding(.horizontal)
                    .padding(.bottom, 60)
                
                CategoryGridView(items: listItemModel.items ?? [], imageSize: imageSize)
                    .padding(.horizontal, 16)
            }
            
        }
        .navigationTitle("")
        .ignoresSafeArea()
        .padding(.bottom, 2)
    }
}
