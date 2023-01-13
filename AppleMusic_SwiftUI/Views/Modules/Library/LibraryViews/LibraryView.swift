//
//  LibraryView.swift
//  AppleMusic_SwiftUI
//
//  Created by Алексей Лосев on 11.01.2023.
//

import SwiftUI

struct LibraryView: View {
    
    @State var editingViewIsHidden = true
    
    var body: some View {
        NavigationView {
            if self.editingViewIsHidden {
                LibraryViewLabel()
                    .navigationBarItems(trailing: Button(action: {
                        editingViewIsHidden.toggle()
                    }, label: {
                        Text("Править")
                            .font(.title3)

                            .foregroundColor(.red)
                    }))
                    .navigationBarTitle("Медиатека")
                    
                
            } else {
                CheckListView()
                    .navigationBarItems(trailing: Button(action: {
                        editingViewIsHidden.toggle()
                    }, label: {
                        Text("Готово")
                            .font(.title3)
                            .foregroundColor(.red)
                    }))
                    .navigationBarTitle("Медиатека")
            }
        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
            .preferredColorScheme(.dark)
    }
}
