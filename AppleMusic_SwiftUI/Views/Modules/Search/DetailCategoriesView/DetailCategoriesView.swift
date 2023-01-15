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
                .navigationBarItems(trailing:
                Button(action: {}, label: {
                    Text(Image(systemName: "ellipsis"))
                        .frame(width: 26, height: 26, alignment: .center)
                        .background(
                            Color.white
                                .cornerRadius(13)
                                .shadow(
                                    color: Color.init(.systemGray3), radius: 2,
                                    x: 0.5,
                                    y: 0.5
                                ))
                        .font(.system(size: 18))
                }))
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
