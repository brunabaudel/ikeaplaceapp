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
    @State var id = 0
    
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
                        ScrollViewReader { reader in
                            ForEach(Array(listModel.items.enumerated()), id: \.element) { index, element in
                                NavigationLink(destination: destination(element: element, imageSize: geo.size.width)) {
                                    ItemMainListView(item: element, imageSize: geo.size.width - 42)
                                        .id(index)
                                }
                            }
                            .padding(8)
                            .accessibilityScrollAction({ edge in
                                print(edge)
                                if edge == .bottom {
                                    if (id < listModel.items.count-1) {
                                        id += 1
                                        withAnimation(.easeInOut) {
                                            reader.scrollTo(id, anchor: .top)
                                        }
                                    }
                                } else if edge == . top {
                                    if (id > 0) {
                                        id -= 1
                                        withAnimation(.easeInOut) {
                                            reader.scrollTo(id, anchor: .top)
                                        }
                                    }
                                }
                            })
                        }
                    }
                }
            }
        }
        .accessibilityElement()
        .accessibilityLabel(Text("You can browse the categories here"))
    }
    
    func destination(element: ListItemModel, imageSize: CGFloat) -> AnyView {
        switch listModel.type {
        case .categories:
            return AnyView(CategoryDetailsView(listItemModel: element, imageSize: imageSize))
        case .roomSets:
            return AnyView(RoomSetsDetailsView(listItemModel: element, imageSize: imageSize))
        }
    }
}
