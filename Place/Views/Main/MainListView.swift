//
//  ListView.swift
//  Place
//
//  Created by Bruna Baudel on 19/11/2022.
//

import SwiftUI

struct MainListView: View {
    
    var listModel: ListModel
    
    var body: some View {
        GeometryReader { geo in
            ScrollView {
                VStack {
                    Text(listModel.title)
                        .font(.title2)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .fontWeight(.light)
                        .padding(.top, 20)
                        .padding(.bottom, 5)
                        .padding(.horizontal, 22)
                    
                    VStack {
                        ForEach(listModel.items) { item in
                            NavigationLink(destination: ItemDetailsView(gridItems: item.items ?? [], imageSize: geo.size.width)) {
                                ItemMainListView(item: item, imageSize: geo.size.width - 42)
                            }
                        }
                        .padding(8)
                    }
                }
            }
        }
    }
}

struct MainListView_Previews: PreviewProvider {
    static var previews: some View {
        MainListView(listModel: categoryListModel)
    }
}
