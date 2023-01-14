//
//  SearchBarView.swift
//  AppleMusic_SwiftUI
//
//  Created by Алексей Лосев on 14.01.2023.
//

import SwiftUI

struct SearchBarView: View {
    @Binding var searchText: String
    @Binding var isSearchActive: Bool
    
    var body: some View {
        HStack {
            HStack {
                Image(systemName: "magnifyingglass")
                    .font(.system(size: 18))
                    .foregroundColor(Color(.systemGray3))
                    .padding(.leading, 12)
                TextField("Artists, Songs, Lyrics, and More", text: $searchText)
                    .onTapGesture {
                        isSearchActive = true
                    }
                
                if isSearchActive {
                    Button(action: {
                        searchText = ""
                    }, label: {
                        Image(systemName: "xmark.circle.fill")
                    })
                    .foregroundColor(Color(.systemGray3))
                    .padding(.trailing, 12)
                }
            }
            .frame(height: 40)
            .background(Color.init(.systemGray6))
            .cornerRadius(15)
            .padding(.top, 5)
            .padding([.leading, .trailing], 15)
            
            if isSearchActive {
                Button(action: {
                    searchText = ""
                    isSearchActive = false
                    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder),
                                                              to: nil,
                                                              from: nil,
                                                              for: nil)
                }, label: {
                    Text("Cancel")
                        .foregroundColor(.red)
                })
                .padding(.trailing, 15)
            }
        }
        .transition(.move(edge: .trailing))
        .animation(.linear, value: 0.1)
    }
}

