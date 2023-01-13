//
//  HostedByArtistsModel.swift
//  AppleMusic_SwiftUI
//
//  Created by Алексей Лосев on 13.01.2023.
//

import Foundation

struct HostedByArtistsModel: Hashable, Identifiable {
    var id = UUID()
    var image: String
    var title: String
}

extension HostedByArtistsModel {
    static var HostedByArtistsArray = [
        HostedByArtistsModel(image: "alligator", title: "The Alligator Hour"),
        HostedByArtistsModel(image: "boiler", title: "Boiler Room"),
        HostedByArtistsModel(image: "mix", title: "Mixtape Delivery Service"),
        HostedByArtistsModel(image: "me", title: "me & dad radio"),
        HostedByArtistsModel(image: "wrtj", title: "WRTJ"),
        HostedByArtistsModel(image: "candy", title: "The Candy Shop")
    ]
}
