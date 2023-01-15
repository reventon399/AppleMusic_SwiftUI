//
//  RadioView.swift
//  AppleMusic_SwiftUI
//
//  Created by Алексей Лосев on 13.01.2023.
//

import SwiftUI

struct RadioView: View {
 
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                FeaturedStationView()
                HostedByArtistsView()
                RecentlyPlayedView()
                    .navigationBarTitle("Radio")
            }
        }
    }
}

struct RadioView_Previews: PreviewProvider {
    static var previews: some View {
        RadioView()
            .preferredColorScheme(.dark)
    }
}
