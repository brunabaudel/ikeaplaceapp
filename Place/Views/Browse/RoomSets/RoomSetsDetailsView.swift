//
//  RoomSetsDetailsView.swift
//  Place
//
//  Created by Bruna Baudel on 23/11/2022.
//

import SwiftUI

struct RoomSetsDetailsView: View {
    
    var listItemModel: ListItemModel
    var imageSize: CGFloat
        
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView {
                VStack(alignment: .leading) {
                    Image(listItemModel.image)
                        .resizable()
                        .frame(width: imageSize, height: imageSize)
                        .aspectRatio(contentMode: .fit)
                    
                    Text("room set".uppercased())
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
                        .padding(.bottom, 10)
                    
                    Text(listItemModel.name.description)
                        .font(.body)
                        .fontWeight(.light)
//                        .foregroundColor(.black)
                        .padding(.horizontal)
                }
            }
            .ignoresSafeArea()
            
            ARButtonView(item: nil)
                .padding(.trailing, 20)
                .padding(.bottom, 120)
        }
        .ignoresSafeArea()
    }
}

