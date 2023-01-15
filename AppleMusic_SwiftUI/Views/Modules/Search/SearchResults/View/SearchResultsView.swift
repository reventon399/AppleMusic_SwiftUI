//
//  SearchResultsView.swift
//  AppleMusic_SwiftUI
//
//  Created by Алексей Лосев on 15.01.2023.
//

import SwiftUI

struct SearchResultsView: View {
    
    @State var selected = 0
    @Binding var searchText: String
    @ObservedObject var model: TrackListObservableModel
    
    var body: some View {
        Picker(selection: $selected, label: Text("")) {
            Text("Apple Music").tag(0)
            Text("Library").tag(1)
        }
        .pickerStyle(SegmentedPickerStyle())
        .padding([.leading, .trailing], 12)
        
        if selected == 0 {
            
        } else {
            MyLibraryView()
        }
    }
}

