//
//  ContentView.swift
//  AppleMusic_SwiftUI
//
//  Created by Алексей Лосев on 09.01.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabBar()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
