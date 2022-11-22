//
//  CategoryModel.swift
//  Place
//
//  Created by Bruna Baudel on 19/11/2022.
//

import SwiftUI

enum BrowseSection: String, CaseIterable {
    case categories = "Categories"
    case roomSets = "Room Sets"
}

struct ListModel {
    var type: BrowseSection
    var title: String
    var items: [ListItemModel]
}

struct ListItemModel: Identifiable {
    internal let id = UUID()
    var name: String
    var image: String
    var items: [GridItemModel]?
}

struct GridItemModel: Identifiable {
    internal let id = UUID()
    var image: String
    var title: String
    var description: String
    var price: Double
    var serialNumber: String
    var details: String
    
    var formatPrice: String {
        price == Double(Int(price)) ? String(format: "€%.f", price) : String(format: "€%.02f", price)
    }
}

let categoryListModel: ListModel =
ListModel(type: .categories, title: "Selected furniture",
              items: [ListItemModel(name: "Chairs", image: "chairs", items: [
                    GridItemModel(image: "chairs", title: "utter", description: "children's stool", price: 7.99, serialNumber: "9834557", details: "Indoor/Outdoor/White"),
                    GridItemModel(image: "chairs", title: "utter", description: "children's stool", price: 7, serialNumber: "9834557", details: "Indoor/Outdoor/White"),
                    GridItemModel(image: "chairs", title: "utter", description: "children's stool", price: 7.99, serialNumber: "9834557", details: "Indoor/Outdoor/White"),
                    GridItemModel(image: "chairs", title: "utter", description: "children's stool", price: 10, serialNumber: "9834557", details: "Indoor/Outdoor/White"),
                    GridItemModel(image: "chairs", title: "utter", description: "children's stool", price: 7.99, serialNumber: "9834557", details: "Indoor/Outdoor/White"),
                    GridItemModel(image: "chairs", title: "utter", description: "children's stool", price: 14, serialNumber: "9834557", details: "Indoor/Outdoor/White"),
                    GridItemModel(image: "chairs", title: "utter", description: "children's stool", price: 7.99, serialNumber: "9834557", details: "Indoor/Outdoor/White"),
                    GridItemModel(image: "chairs", title: "utter", description: "children's stool", price: 7.99, serialNumber: "9834557", details: "Indoor/Outdoor/White"),
                  ]),
                     ListItemModel(name: "Chairs1", image: "chairs", items: [
                        GridItemModel(image: "chairs", title: "utter", description: "children's stool", price: 7.99, serialNumber: "9834557", details: "Indoor/Outdoor/White"),
                        GridItemModel(image: "chairs", title: "utter", description: "children's stool", price: 7, serialNumber: "9834557", details: "Indoor/Outdoor/White"),
                     ]),
                     ListItemModel(name: "Chairs2", image: "chairs", items: [
                        GridItemModel(image: "chairs", title: "utter", description: "children's stool", price: 7.99, serialNumber: "9834557", details: "Indoor/Outdoor/White"),
                      ]),
                     ListItemModel(name: "Chairs3", image: "chairs", items: [
                        GridItemModel(image: "chairs", title: "utter", description: "children's stool", price: 7.99, serialNumber: "9834557", details: "Indoor/Outdoor/White"),
                      ])
                     ]
            )

let roomSetsListModel: ListModel =
ListModel(type: .roomSets, title: "Experiences to try",
              items: [ListItemModel(name: "A space to relax", image: "a-space-ro-relax"),
                     ListItemModel(name: "A space to relax", image: "a-space-ro-relax"),
                     ListItemModel(name: "A space to relax", image: "a-space-ro-relax"),
                     ListItemModel(name: "A space to relax", image: "a-space-ro-relax")
                     ]
            )

let suggestions: [GridItemModel] = [
    GridItemModel(image: "chairs", title: "utter", description: "children's stool", price: 7.99, serialNumber: "9834557", details: "Indoor/Outdoor/White"),
    GridItemModel(image: "chairs", title: "utter", description: "children's stool", price: 7.99, serialNumber: "9834557", details: "Indoor/Outdoor/White"),
]
