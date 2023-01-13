//
//  HostedByArtistsView.swift
//  AppleMusic_SwiftUI
//
//  Created by Алексей Лосев on 13.01.2023.
//

import SwiftUI

struct HostedByArtistsView: View {
    
    let rows = [
        GridItem(.fixed(170))
    ]
    
    @State var modelArray = HostedByArtistsModel.HostedByArtistsArray
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            
            HStack {
                Button(action: {}, label: {
                    Text("Hosted by Artists")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.leading)
                })
                Spacer()
            }
            LazyHGrid(rows: rows) {
                
                ForEach(modelArray, id:\.self) { item in
                    
                    VStack(alignment: .leading) {
                        Image(item.image)
                            .resizable()
                            .cornerRadius(5)
                            .foregroundColor(.blue)
                            .frame(width: 170)
                        Text(item.title)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                    }
                }
            }
            .frame(height: 200)
            .padding(.horizontal, 16)
            .padding(.bottom, 16)
        }
    }
}

struct HostedByArtistsView_Previews: PreviewProvider {
    static var previews: some View {
        HostedByArtistsView()
            .preferredColorScheme(.dark)
    }
}
