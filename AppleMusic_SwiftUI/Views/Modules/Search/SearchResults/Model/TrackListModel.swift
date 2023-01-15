//
//  TrackListModel.swift
//  AppleMusic_SwiftUI
//
//  Created by Алексей Лосев on 15.01.2023.
//

import Foundation

enum MusicType {
    case track
    case playlist
}

struct TrackListModel: Hashable, Identifiable {
    var id = UUID()
    let image: String
    let title: String
    var category: String? = nil
    var artist: String? = nil
    let description: String
    let type: MusicType
}

extension TrackListModel {
    static let allMusic = [
        TrackListModel(image: "", title: "KOMPRESSOR", category: "Favorite Playlist", description: "TVETH 2021", type: .playlist),
        TrackListModel(image: "", title: "Relaxing Jazz", category: "Favorite Playlist", description: "Apple Music", type: .playlist),
        TrackListModel(image: "", title: "Live", category: "Favorite Playlist", description: "Apple Music", type: .playlist),
        TrackListModel(image: "", title: "Classic Rock", category: "Favorite Playlist", description: "Apple Music", type: .playlist),
        TrackListModel(image: "", title: "Кукла", artist: "LIL KRYSTALL", description: "LIL KRYSTALL Show", type: .track),
        TrackListModel(image: "", title: "SUPER SONIC", artist: "Tanya Tekis", description: "Trap house", type: .track),
        TrackListModel(image: "", title: "Hentai", artist: "The Limba, Rakhim", description: "Russian Hit", type: .track),
        TrackListModel(image: "", title: "NBA", artist: "FRESCO", description: "EQUILIBRIUM", type: .track),
        TrackListModel(image: "", title: "FASTLANE", artist: "RVETH", description: "BLOODLINES", type: .track),
        TrackListModel(image: "", title: "PAINKILLER", artist: "JEEBMO, TVETH", description: "Painkiller", type: .track)
    ]
}
