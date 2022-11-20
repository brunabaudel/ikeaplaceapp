//
//  ItemDetails.swift
//  Place
//
//  Created by Bruna Baudel on 20/11/2022.
//

import SwiftUI

struct ItemDetailsView: View {
    
    var gridItems: [GridItemModel]
    var imageSize: CGFloat
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Image("chairs")
                    .resizable()
                    .frame(width: imageSize, height: imageSize)
                    .aspectRatio(contentMode: .fit)
                
//                GeometryReader { geometry in
//                    VStack {
//                        if geometry.frame(in: .global).minY <= 0 {
//                            Image(item.image)
//                            .resizable()
//                            .aspectRatio(contentMode: .fill)
//                            .frame(width: geometry.size.width, height: geometry.size.height)
//                            .offset(y: geometry.frame(in: .global).minY/9)
//                            .clipped()
//                        } else {
//                            Image(item.image)
//                                .resizable()
//                                .aspectRatio(contentMode: .fill)
//                                .frame(width: geometry.size.width, height: geometry.size.height + geometry.frame(in: .global).minY)
//                                .clipped()
//                        }
//                    }
//                }
                
                Text("feature".uppercased())
                    .foregroundColor(.gray)
                    .font(.subheadline)
                    .fontWeight(.light)
                    .padding(.horizontal)
                    .padding(.top, 8)
                    .padding(.bottom, 1)
                
                Text("Chairs")
                    .font(.title)
                    .fontWeight(.light)
                    .padding(.horizontal)
                    .padding(.bottom, 60)
                
                GridDetailsView(items: gridItems, imageSize: imageSize)
                    .padding(.horizontal, 16)
            }
        }
        .navigationTitle("")
        .accentColor(.black)
        .ignoresSafeArea()
    }
}

//struct ItemDetailsView_Previews: PreviewProvider {
//    static var previews: some View {
//        ItemDetailsView(imageSize: 350.0)
//    }
//}
