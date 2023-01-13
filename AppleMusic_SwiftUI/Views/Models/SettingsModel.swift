//
//  SettingsModel.swift
//  AppleMusic_SwiftUI
//
//  Created by Алексей Лосев on 11.01.2023.
//

import Foundation

struct Settings: Hashable, Identifiable {
    var id = UUID()
    var image: String
    var name: String
}

extension Settings {
    static var settingsItems = [
        Settings(image: "music.note.list", name: "Плейлисты"),
        Settings(image: "music.mic", name: "Артисты"),
        Settings(image: "rectangle.stack", name: "Альбомы"),
        Settings(image: "music.note", name: "Песни"),
        Settings(image: "tv", name: "Телешоу и фильмы"),
        Settings(image: "music.note.tv", name: "Видеоклипы"),
        Settings(image: "guitars", name: "Жанры"),
        Settings(image: "person.2.crop.square.stack", name: "Сборники"),
        Settings(image: "music.quarternote.3", name: "Авторы"),
        Settings(image: "arrow.down.circle", name: "Загружено"),
        Settings(image: "music.note.house", name: "Домашняя коллекция")
    ]
}

struct GenresCollection: Hashable, Identifiable {
    var id = UUID()
    
    var featuredStation: String
    var stationName: String
    var appleMusicGenre: String
    var genreImage: String
}

extension GenresCollection {
    static var genresItems = [
        GenresCollection(featuredStation: "FEATURED STATION", stationName: "Soft Pop Station", appleMusicGenre: "Apple Music Pop", genreImage: "lightPop"),
        GenresCollection(featuredStation: "FEATURED STATION", stationName: "Hits Station", appleMusicGenre: "Apple Music Hits", genreImage: "hits"),
        GenresCollection(featuredStation: "FEATURED STATION", stationName: "Hip-Hop Station", appleMusicGenre: "Apple Music Hip-Hop", genreImage: "hiphop"),
        GenresCollection(featuredStation: "FEATURED STATION", stationName: "Pop Station", appleMusicGenre: "Apple Music Pop", genreImage: "pop"),
        GenresCollection(featuredStation: "FEATURED STATION", stationName: "Classic Rock Station", appleMusicGenre: "Apple Music Classic Rock", genreImage: "rock"),
        GenresCollection(featuredStation: "FEATURED STATION", stationName: "Smooth Jazz Station", appleMusicGenre: "Apple Music Jazz", genreImage: "jazz")
    ]
}
