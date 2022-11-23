//
//  ListView.swift
//  Place
//
//  Created by Bruna Baudel on 19/11/2022.
//

import SwiftUI

struct MainListView: View {
    
    var listModel: ListModel
    @State private var active: Bool = false
    
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
                            NavigationLink(destination: listModel.type == .categories ?
                                           CategoryDetailsView(listItemModel: item, imageSize: geo.size.width)
                                            :
                                            CategoryDetailsView(listItemModel: item, imageSize: geo.size.width)) {
                                ItemMainListView(item: item, imageSize: geo.size.width - 42)
                            }
                        }
                        .padding(8)
                    }
                }
            }
        }
        .accessibilityElement()
        .accessibilityLabel(Text("You can browse the categories here"))
    }
}
