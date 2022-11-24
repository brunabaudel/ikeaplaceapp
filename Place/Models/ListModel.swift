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

struct ListItemModel: Identifiable, Hashable {
    internal let id = UUID()
    var name: String
    var image: String
    var imageDescription: String
    var items: [GridItemModel]?
    
    static func == (lhs: ListItemModel, rhs: ListItemModel) -> Bool {
        return lhs.id == rhs.id
    }
    
    public func hash(into hasher: inout Hasher) {
        return hasher.combine(id)
    }
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

let categoryList: ListModel =
ListModel(type: .categories, title: "Selected furniture",
          items: [ListItemModel(name: "chairs", image: "chairs", imageDescription: "simple chair in the middle", items: categoriesItems),
                      ListItemModel(name: "armchairs", image: "armchairs-chaise-longues", imageDescription: "", items: categoriesItems),
                      ListItemModel(name: "bar", image: "bar-furniture", imageDescription: "", items: categoriesItems),
                      ListItemModel(name: "beds", image: "beds", imageDescription: "", items: categoriesItems),
                      ListItemModel(name: "bookcases shelving", image: "bookcases-shelving-units", imageDescription: "", items: categoriesItems),
                      ListItemModel(name: "cabinets cupboards", image: "cabinets-cupboards", imageDescription: "", items: categoriesItems),
                      ListItemModel(name: "cafe", image: "cafe-furniture", imageDescription: "", items: categoriesItems),
                      ListItemModel(name: "drawers", image: "chests-of-drawers-drawer-units", imageDescription: "", items: categoriesItems),
                      ListItemModel(name: "children", image: "childrens-furniture", imageDescription: "", items: categoriesItems),
                      ListItemModel(name: "furniture sets", image: "furniture-sets", imageDescription: "", items: categoriesItems),
                      ListItemModel(name: "gaming", image: "gaming-furniture", imageDescription: "", items: categoriesItems),
                      ListItemModel(name: "nursery", image: "nursery-furniture", imageDescription: "", items: categoriesItems),
                      ListItemModel(name: "outdoor", image: "outdoor-furniture", imageDescription: "", items: categoriesItems),
                      ListItemModel(name: "room dividers", image: "room-dividers", imageDescription: "", items: categoriesItems),
                      ListItemModel(name: "sideboards tables", image: "sideboards-buffets-console-tables", imageDescription: "", items: categoriesItems),
                      ListItemModel(name: "sofas", image: "sofas", imageDescription: "", items: categoriesItems),
                      ListItemModel(name: "tables desks", image: "tables-desks", imageDescription: "", items: categoriesItems),
                      ListItemModel(name: "trolleys", image: "trolleys", imageDescription: "", items: categoriesItems),
                      ListItemModel(name: "tv media", image: "tv-media-furniture", imageDescription: "", items: categoriesItems),
                      ListItemModel(name: "wardrobes", image: "wardrobes", imageDescription: "", items: categoriesItems),
                     ])

let roomSetsList: ListModel =
ListModel(type: .roomSets, title: "Experiences to try",
          items: [ListItemModel(name: "A space to relax", image: "a-space-ro-relax", imageDescription: "", items: []),
                  ListItemModel(name: "Calm & Comfortable", image: "calm-comfortable", imageDescription: "", items: []),
                  ListItemModel(name: "A space to relax", image: "a-space-ro-relax", imageDescription: "", items: []),
                  ListItemModel(name: "Calm & Comfortable", image: "calm-comfortable", imageDescription: "", items: []),
                  ListItemModel(name: "A space to relax", image: "a-space-ro-relax", imageDescription: "", items: []),
                  ListItemModel(name: "Calm & Comfortable", image: "calm-comfortable", imageDescription: "", items: []),
                 ])

let suggestions: [GridItemModel] = [
    GridItemModel(image: "chairs", modelName: "chair", title: "utter", description: "Indoor chair", price: 20.99, serialNumber: "9834557", details: "Indoor/Red"),
    GridItemModel(image: "chairs", modelName: "chair", title: "utter", description: "Indoor chair", price: 7.99, serialNumber: "9834557", details: "Indoor/Outdoor/White"),
]

let categoriesItems: [GridItemModel] = [
    GridItemModel(image: "chair", modelName: "chair", title: "utter", description: "Indoor chair", price: 20.99, serialNumber: "9834557", details: "Indoor/Outdoor/White"),
    GridItemModel(image: "rustic-chair", modelName: "rustic-chair", title: "utter", description: "Indoor chair", price: 7, serialNumber: "9834557", details: "Indoor/Outdoor/White"),
    GridItemModel(image: "chairs", modelName: "chair", title: "utter", description: "Indoor chair", price: 40.99, serialNumber: "9834557", details: "Indoor/Outdoor/White"),
    GridItemModel(image: "chairs", modelName: "chair", title: "utter", description: "Indoor chair", price: 10, serialNumber: "9834557", details: "Indoor/Outdoor/White"),
    GridItemModel(image: "chairs", modelName: "chair", title: "utter", description: "Indoor chair", price: 7.99, serialNumber: "9834557", details: "Indoor/Outdoor/White"),
    GridItemModel(image: "chairs", modelName: "chair", title: "utter", description: "Indoor chair", price: 14, serialNumber: "9834557", details: "Indoor/Outdoor/White"),
    GridItemModel(image: "chairs", modelName: "chair", title: "utter", description: "Indoor chair", price: 7.99, serialNumber: "9834557", details: "Indoor/Outdoor/White"),
    GridItemModel(image: "chairs", modelName: "chair", title: "utter", description: "Indoor chair", price: 7.99, serialNumber: "9834557", details: "Indoor/Outdoor/White"),
  ]
