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
    var modelName: String
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
              items: [ListItemModel(name: "chairs", image: "chairs", items: categoriesItems),
                      ListItemModel(name: "armchairs", image: "armchairs-chaise-longues", items: categoriesItems),
                      ListItemModel(name: "bar", image: "bar-furniture", items: categoriesItems),
                      ListItemModel(name: "beds", image: "beds", items: categoriesItems),
                      ListItemModel(name: "bookcases shelving", image: "bookcases-shelving-units", items: categoriesItems),
                      ListItemModel(name: "cabinets cupboards", image: "cabinets-cupboards", items: categoriesItems),
                      ListItemModel(name: "cafe", image: "cafe-furniture", items: categoriesItems),
                      ListItemModel(name: "drawers", image: "chests-of-drawers-drawer-units", items: categoriesItems),
                      ListItemModel(name: "childrens", image: "childrens-furniture", items: categoriesItems),
                      ListItemModel(name: "furniture sets", image: "furniture-sets", items: categoriesItems),
                      ListItemModel(name: "gaming", image: "gaming-furniture", items: categoriesItems),
                      ListItemModel(name: "nursery", image: "nursery-furniture", items: categoriesItems),
                      ListItemModel(name: "outdoor", image: "outdoor-furniture", items: categoriesItems),
                      ListItemModel(name: "room dividers", image: "room-dividers", items: categoriesItems),
                      ListItemModel(name: "sideboards tables", image: "sideboards-buffets-console-tables", items: categoriesItems),
                      ListItemModel(name: "sofas", image: "sofas", items: categoriesItems),
                      ListItemModel(name: "tables desks", image: "tables-desks", items: categoriesItems),
                      ListItemModel(name: "trolleys", image: "trolleys", items: categoriesItems),
                      ListItemModel(name: "tv media", image: "tv-media-furniture", items: categoriesItems),
                      ListItemModel(name: "wardrobes", image: "wardrobes", items: categoriesItems),
                     ])

let roomSetsListModel: ListModel =
ListModel(type: .roomSets, title: "Experiences to try",
              items: [ListItemModel(name: "A space to relax", image: "a-space-ro-relax"),
                     ListItemModel(name: "A space to relax", image: "a-space-ro-relax"),
                     ListItemModel(name: "A space to relax", image: "a-space-ro-relax"),
                     ListItemModel(name: "A space to relax", image: "a-space-ro-relax")
                     ]
            )

let suggestions: [GridItemModel] = [
    GridItemModel(image: "chairs", modelName: "chair", title: "utter", description: "children's stool", price: 7.99, serialNumber: "9834557", details: "Indoor/Outdoor/White"),
    GridItemModel(image: "chairs", modelName: "chair", title: "utter", description: "children's stool", price: 7.99, serialNumber: "9834557", details: "Indoor/Outdoor/White"),
]

let categoriesItems: [GridItemModel] = [
    GridItemModel(image: "armchairs-chaise-longues", modelName: "lamp", title: "utter", description: "children's stool", price: 7.99, serialNumber: "9834557", details: "Indoor/Outdoor/White"),
    GridItemModel(image: "chairs", modelName: "lamp", title: "utter", description: "children's stool", price: 7, serialNumber: "9834557", details: "Indoor/Outdoor/White"),
    GridItemModel(image: "chairs", modelName: "lamp", title: "utter", description: "children's stool", price: 7.99, serialNumber: "9834557", details: "Indoor/Outdoor/White"),
    GridItemModel(image: "chairs", modelName: "lamp", title: "utter", description: "children's stool", price: 10, serialNumber: "9834557", details: "Indoor/Outdoor/White"),
    GridItemModel(image: "chairs", modelName: "lamp", title: "utter", description: "children's stool", price: 7.99, serialNumber: "9834557", details: "Indoor/Outdoor/White"),
    GridItemModel(image: "chairs", modelName: "lamp", title: "utter", description: "children's stool", price: 14, serialNumber: "9834557", details: "Indoor/Outdoor/White"),
    GridItemModel(image: "chairs", modelName: "lamp", title: "utter", description: "children's stool", price: 7.99, serialNumber: "9834557", details: "Indoor/Outdoor/White"),
    GridItemModel(image: "chairs", modelName: "lamp", title: "utter", description: "children's stool", price: 7.99, serialNumber: "9834557", details: "Indoor/Outdoor/White"),
  ]
