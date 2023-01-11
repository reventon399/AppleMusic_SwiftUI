//
//  CurrentTrackView.swift
//  AppleMusic_SwiftUI
//
//  Created by Алексей Лосев on 11.01.2023.
//

import SwiftUI

struct CurrentTrackView: View {
    var body: some View {
        VStack {
            HStack(spacing: 15) {
                Image("logan")
                    .resizable()
                    .cornerRadius(15)
                    .frame(width: 55, height: 55)
                    .aspectRatio(contentMode: .fill)
                
                Text("LIL KRYSTALLL - Логан")
                    .font(.callout)
                    .bold()
                
                Spacer()
                
                Button(action: {}, label: {
                    Image(systemName: "play.fill")
                        .font(.title2)
                        .foregroundColor(.black)
                })
                
                Button(action: {}, label: {
                    Image(systemName: "forward.fill")
                        .font(.title2)
                        .foregroundColor(.black)
                })
                
            }
            .padding()
            .frame(height: 80)
            .offset(y: -48)
        }
    }
}

struct CurrentTrackView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentTrackView()
    }
}
