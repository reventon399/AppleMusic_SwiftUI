//
//  CheckListView.swift
//  AppleMusic_SwiftUI
//
//  Created by Алексей Лосев on 11.01.2023.
//

import SwiftUI

struct CheckListView: View {
    
    @State var settingsItems = Settings.settingsItems
    @State var isEditMode = EditMode.active
    @State var selectionItems: [String] = []
    
    var body: some View {
        List {
            ForEach(settingsItems, id: \.self) { names in
                HStack() {
                    Image(systemName: names.image)
                        .foregroundColor(.red)
                    Text(names.name)
                        .padding(.leading, 5)
                }
                if self.selectionItems.contains(names.title) {
                    self.selectionItems.removeAll(where: { names.title == $0 })
                } else {
                    self.selectionItems.append(names.title)
                }
            }
            .onMove(perform: moveItem)
        }
        .environment(\.editMode, $isEditMode)
        .listStyle(.plain)
    }
    func moveItem(from sourcePosition: IndexSet, to destinationPosition: Int) {
        self.settingsItems.move(
            fromOffsets: sourcePosition,
            toOffset: destinationPosition
        )
    }
    
    
    struct CheckListView_Previews: PreviewProvider {
        static var previews: some View {
            CheckListView()
        }
    }
}
