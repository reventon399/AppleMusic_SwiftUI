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
            
            ScrollView {
                if self.editingViewIsHidden {
                    Spacer()
                        .padding(.all, 100.0)
                        .navigationBarItems(trailing: Button(action: {
                            editingViewIsHidden.toggle()
                        }, label: {
                            Text("Править")
                                .foregroundColor(.red)
                        }))
                        .navigationBarTitle("Медиатека")
                    VStack(alignment: .center) {
                        Text("Ищете свою музыку?")
                            .multilineTextAlignment(.center)
                            .bold()
                            .font(.system(size: 31))
                        Text("Здесь появится купленная вами в Itunes Store музыка")
                            .foregroundColor(Color.gray)
                            .multilineTextAlignment(.center)
                            .font(.system(size: 22))
                    }
                    .frame(width: 400)
                } else {
                    CheckListView()
                        .navigationBarItems(trailing: Button(action: {
                            editingViewIsHidden.toggle()
                        }, label: {
                            Text("Готово")
                                .foregroundColor(.red)
                        }))
                        .navigationBarTitle("Медиатека")
                }
               
            }
            .navigationTitle("Медиатека")
            .scrollDisabled(true)
        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
