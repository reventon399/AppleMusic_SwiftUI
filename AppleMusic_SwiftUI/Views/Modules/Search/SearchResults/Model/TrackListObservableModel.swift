//
//  TrackListObservableModel.swift
//  AppleMusic_SwiftUI
//
//  Created by Алексей Лосев on 15.01.2023.
//

import Foundation

class TrackListObservableModel: ObservableObject {
    @Published var data = TrackListModel.allMusic
}
