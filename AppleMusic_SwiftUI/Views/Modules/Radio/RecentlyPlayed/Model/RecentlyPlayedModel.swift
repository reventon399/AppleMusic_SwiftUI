//
//  RecentlyPlayedModel.swift
//  AppleMusic_SwiftUI
//
//  Created by Алексей Лосев on 13.01.2023.
//

import Foundation

struct RecentlyPlayedModel: Hashable, Identifiable {
    var id = UUID()
    var image: String
    var title: String
}

extension RecentlyPlayedModel {
    static var recentlyPlayedArray = [
    RecentlyPlayedModel(image: "alexey", title: "Алексей's station"),
    RecentlyPlayedModel(image: "max", title: "Max Korzh & Similar Artists"),
    RecentlyPlayedModel(image: "platina", title: "Платина & Similar Artists"),
    RecentlyPlayedModel(image: "depo", title: "Boulevard Depo & Similar Artists"),
    RecentlyPlayedModel(image: "bab", title: "SQWOZ BAB & Similar Artists"),
    RecentlyPlayedModel(image: "thomas", title: "Thomas Mraz & Similar Artists")
    ]
}
