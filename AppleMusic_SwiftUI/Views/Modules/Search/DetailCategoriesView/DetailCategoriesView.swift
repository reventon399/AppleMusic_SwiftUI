//
//  DetialCategoriesView.swift
//  AppleMusic_SwiftUI
//
//  Created by Алексей Лосев on 15.01.2023.
//

import SwiftUI

struct DetailCategoriesView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            FeaturedStationView()
            HostedByArtistsView() 
                .navigationTitle("Hits")
        }
    }
}

struct DetialCategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        DetailCategoriesView()
            .preferredColorScheme(.dark)
    }
}
