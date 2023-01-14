//
//  TabView.swift
//  AppleMusic_SwiftUI
//
//  Created by Алексей Лосев on 11.01.2023.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom), content: {
            TabView {
                
                LibraryView()
                    .tabItem {
                        Image(systemName: "music.note.house.fill")
                        Text("Медиатека")
                    }
                
                RadioView()
                    .tabItem {
                        Image(systemName: "dot.radiowaves.left.and.right")
                        Text("Радио")
                    }
                
                SearchView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Поиск")
                    }
                
            }
            .accentColor(.red)
            BlurView()
                .frame(height: 80)
                .offset(y: -48)
            CurrentTrackView()
        } )
    }
}


struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
            .preferredColorScheme(.dark)
    }
}
