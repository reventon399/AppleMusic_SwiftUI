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
                    .frame(width: 23, height: 23)
                Text(self.title)
                    .font(.system(size: 24))
                    .padding(.leading, 5)
            }
            .frame(height: 30)
        }
    }
}

