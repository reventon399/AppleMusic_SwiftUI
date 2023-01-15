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
        TrackListModel(image: "playlist-1", title: "Music For Coding", category: "Favorite Playlist", description: "Apple Music", type: .playlist),
        TrackListModel(image: "playlist-2", title: "Relaxing Jazz", category: "Favorite Playlist", description: "Apple Music", type: .playlist),
        TrackListModel(image: "playlist-3", title: "Live", category: "Favorite Playlist", description: "Apple Music", type: .playlist),
        TrackListModel(image: "playlist-4", title: "Classic Rock", category: "Favorite Playlist", description: "Apple Music", type: .playlist),
        TrackListModel(image: "track-1", title: "Monkinbird", artist: "Eminem", description: "The Eminem Show", type: .track),
        TrackListModel(image: "albumLogo", title: "Radioactive", artist: "Imagine Dragons", description: "The Transition of Mali", type: .track),
        TrackListModel(image: "track-2", title: "I Got Love", artist: "Miyagi & Panda", description: "Russian Hit", type: .track),
        TrackListModel(image: "track-3", title: "Flo-Rida", artist: "Whistle", description: "Songs Under Cover", type: .track),
        TrackListModel(image: "track-4", title: "LMFAO", artist: "Party Rock Anthem", description: "Deceptive Bends", type: .track),
        TrackListModel(image: "track-5", title: "Obsession", artist: "USO", description: "Obsession", type: .track)
    ]
}
