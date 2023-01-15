//
//  SeachResultItemView.swift
//  AppleMusic_SwiftUI
//
//  Created by Алексей Лосев on 15.01.2023.
//

import SwiftUI

struct SeachResultItemView: View {
    
    var image: String = ""
    var title: String = ""
    var description: String = ""
    var type: MusicType
    
    var body: some View {
        HStack(alignment: .center) {
            Image(self.image)
                .resizable()
                .frame(width: 45, height: 45)
                .scaledToFit()
                .cornerRadius(8)
            
            VStack(alignment: .leading) {
                Spacer()
                Text(self.title)
                    .font(.system(size: 14))
                
                Text("\((type == .playlist ? "Playlist –" : "Track –") + self.description)")
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
                
                Spacer()
                Divider()
            }
            .padding(.leading, 12)
            Spacer()
            Button(action: {}, label: {
                Text(Image(systemName:(type == .playlist) ? "chevron.right" : "ellipsis"))
                    .frame(width: 20, height: 20, alignment: .center)
            })
            .font(.system(size: 14))
        }
        .frame(height: 60)
    }
}
