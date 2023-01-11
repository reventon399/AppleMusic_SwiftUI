//
//  CheckListView.swift
//  AppleMusic_SwiftUI
//
//  Created by Алексей Лосев on 11.01.2023.
//

import SwiftUI

struct CheckListView: View {
    
    var categoryNames = [
        "Плейлисты",
        "Артисты",
        "Альбомы",
        "Песни",
        "Телешоу и фильмы",
        "Видеоклипы",
        "Жанры",
        "Сборники",
        "Авторы",
        "Загружено",
        "Домашняя коллекция",
    ]
    
    var imageNames = [
        "music.note.list",
        "music.mic",
        "rectangle.stack",
        "music.note",
        "tv",
        "music.note.tv",
        "guitars",
        "person.2.crop.square.stack",
        "music.quarternote.3",
        "arrow.down.circle",
        "music.note.house",
    ]
    
    var categoryDict: [String: String] = [
        "Плейлисты": "music.note.list",
        "Артисты": "music.mic",
        "Альбомы": "rectangle.stack",
        "Песни": "music.note",
        "Телешоу и фильмы": "tv",
        "Видеоклипы": "music.note.tv",
        "Жанры": "guitars",
        "Сборники": "person.2.crop.square.stack",
        "Авторы": "music.quarternote.3",
        "Загружено": "arrow.down.circle",
        "Домашняя коллекция": "music.note.house",
    ]
    var body: some View {
        List {
            ForEach(categoryNames, id: \.self) { names in
                Text(names)
            }
        }
    }
}


struct CheckListView_Previews: PreviewProvider {
    static var previews: some View {
        CheckListView()
    }
}
