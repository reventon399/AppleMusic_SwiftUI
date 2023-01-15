//
//  AppleMusicLibraryView.swift
//  AppleMusic_SwiftUI
//
//  Created by Алексей Лосев on 15.01.2023.
//

import SwiftUI

struct AppleMusicLibraryView: View {
    var model: TrackListObservableModel
    var searchText: String
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 12)
    ]
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            LazyVGrid(columns: columns) {
                if searchText.isEmpty {
                    ForEach(model.data, id: \.self) { item in
                        SeachResultItemView(image: item.image,
                                            title: item.title,
                                            description: item.description,
                                            type: item.type)
                    }
                } else {
                    ForEach(model.data.filter {
                        $0.title.lowercased().contains(searchText.lowercased()) &&
                        $0.type == .track
                    }, id: \.self) { item in
                        SeachResultItemView(image: item.image,
                                            title: item.title,
                                            description: item.description,
                                            type: item.type)
                    }
                }
            }
            .padding([.leading, .trailing], 12)
        }
        .padding(.top, 12)
    }
}
