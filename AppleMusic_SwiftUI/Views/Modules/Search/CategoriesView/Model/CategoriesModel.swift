//
//  CategoriesModel.swift
//  AppleMusic_SwiftUI
//
//  Created by Алексей Лосев on 15.01.2023.
//

import Foundation

struct CategoriesModel: Hashable, Identifiable {
    var id = UUID()
    var image: String
}

extension CategoriesModel {
    static var categoriesArray = [
       CategoriesModel(image: "1"),
       CategoriesModel(image: "2"),
       CategoriesModel(image: "3"),
       CategoriesModel(image: "4"),
       CategoriesModel(image: "5"),
       CategoriesModel(image: "6"),
       CategoriesModel(image: "7"),
       CategoriesModel(image: "8"),
       CategoriesModel(image: "9"),
       CategoriesModel(image: "10")
    ]
}
