//
//  FeaturedStationsModel.swift
//  AppleMusic_SwiftUI
//
//  Created by Алексей Лосев on 13.01.2023.
//

import Foundation

struct FeaturedStationsModel: Hashable, Identifiable {
    var id = UUID()
    
    var featuredStation: String
    var stationName: String
    var appleMusicGenre: String
    var genreImage: String
}

extension FeaturedStationsModel {
    static var genresItems = [
        FeaturedStationsModel(featuredStation: "FEATURED STATION", stationName: "Soft Pop Station", appleMusicGenre: "Apple Music Pop", genreImage: "lightPop"),
        FeaturedStationsModel(featuredStation: "FEATURED STATION", stationName: "Hits Station", appleMusicGenre: "Apple Music Hits", genreImage: "hits"),
        FeaturedStationsModel(featuredStation: "FEATURED STATION", stationName: "Hip-Hop Station", appleMusicGenre: "Apple Music Hip-Hop", genreImage: "hiphop"),
        FeaturedStationsModel(featuredStation: "FEATURED STATION", stationName: "Pop Station", appleMusicGenre: "Apple Music Pop", genreImage: "pop"),
        FeaturedStationsModel(featuredStation: "FEATURED STATION", stationName: "Classic Rock Station", appleMusicGenre: "Apple Music Classic Rock", genreImage: "rock"),
        FeaturedStationsModel(featuredStation: "FEATURED STATION", stationName: "Smooth Jazz Station", appleMusicGenre: "Apple Music Jazz", genreImage: "jazz")
    ]
}
