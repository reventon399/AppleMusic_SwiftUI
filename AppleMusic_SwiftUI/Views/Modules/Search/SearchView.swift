//
//  SearchView.swift
//  AppleMusic_SwiftUI
//
//  Created by Алексей Лосев on 14.01.2023.
//

import SwiftUI

struct SearchView: View {
    
    @State private var searchText = ""
    @State private var isSearchingActive = false
    
    var body: some View {
        SearchBarView(searchText: $searchText, isSearchActive: $isSearchingActive)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
            .preferredColorScheme(.dark)
    }
}
