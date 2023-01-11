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
    @State var itemSelected = Set<UUID>()
    
    var body: some View {
        List(selection: $itemSelected) {
            ForEach(settingsItems) { item in
                CheckListitemView(
                    image: item.image,
                    title: item.name,
                    isSelected: selectionItems.contains(item.name)
                ) {
                    if self.selectionItems.contains(item.name) {
                        self.selectionItems.removeAll(where: { item.name == $0 })
                    } else {
                        self.selectionItems.append(item.name)
                    }
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
