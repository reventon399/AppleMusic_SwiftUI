//
//  CheckListitemView.swift
//  AppleMusic_SwiftUI
//
//  Created by Алексей Лосев on 11.01.2023.
//

import SwiftUI

struct CheckListitemView: View {
    
    var image: String
    var title: String
    var isSelected: Bool
    var itemAction: () -> ()
    
    var body: some View {
        Button(action: self.itemAction) {
            HStack {
                Image(systemName: self.image)
                    .resizable()
                    .foregroundColor(.red)
                    .frame(width: 18, height: 18)
                Text(self.title)
                    .padding(.leading, 5)
            }
            .frame(height: 30)
        }
    }
}

