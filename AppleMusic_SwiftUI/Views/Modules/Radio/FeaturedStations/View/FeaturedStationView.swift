//
//  RadioStationView.swift
//  AppleMusic_SwiftUI
//
//  Created by Алексей Лосев on 13.01.2023.
//

import SwiftUI

struct FeaturedStationView: View {
    
    let rows = [
        GridItem(.fixed(300))
    ]
    
    @State var genresArray = FeaturedStationsModel.genresItems
    
    var body: some View {
        
        
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows) {
                ForEach(genresArray, id:\.self) { item in
                    VStack(alignment: .leading) {
                        Text(item.featuredStation)
                            .font(.caption)
                            .foregroundColor(Color.gray)
                        Text(item.stationName)
                            .font(.title2)
                            .foregroundColor(Color.white)
                        Text(item.appleMusicGenre)
                            .font(.title2)
                            .foregroundColor(Color.gray)
                        Image(item.genreImage)
                            .resizable()
                            .foregroundColor(.blue)
                            .frame(width: 360)
                    }
                }
            }
            .frame(height: 300)
            .padding(.horizontal, 16)
            .padding(.bottom, 16)
        }
    }

}

struct RadioStationView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedStationView()
            .preferredColorScheme(.dark)
    }
}
