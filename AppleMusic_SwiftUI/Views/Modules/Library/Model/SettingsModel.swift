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
        Settings(image: "music.note.list", name: "Playlists"),
        Settings(image: "music.mic", name: "Artists"),
        Settings(image: "rectangle.stack", name: "Albums"),
        Settings(image: "music.note", name: "Songs"),
        Settings(image: "tv", name: "TV & Movies"),
        Settings(image: "music.note.tv", name: "Music Videos"),
        Settings(image: "guitars", name: "Genres"),
        Settings(image: "person.2.crop.square.stack", name: "Compilations"),
        Settings(image: "music.quarternote.3", name: "Composers"),
        Settings(image: "arrow.down.circle", name: "Downloaded"),
        Settings(image: "music.note.house", name: "Домашняя коллекция")
    ]
}

