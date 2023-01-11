//
//  SettingsModel.swift
//  AppleMusic_SwiftUI
//
//  Created by Алексей Лосев on 11.01.2023.
//

import Foundation

struct Settings: Hashable {
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

