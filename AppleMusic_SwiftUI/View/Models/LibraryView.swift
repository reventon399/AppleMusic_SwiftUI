//
//  LibraryView.swift
//  AppleMusic_SwiftUI
//
//  Created by Алексей Лосев on 11.01.2023.
//

import SwiftUI

struct LibraryView: View {
    var body: some View {
        NavigationView {
            
            ScrollView {
                Spacer()
                    .padding(.all, 100.0)
                    
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
            }
            .navigationTitle("Медиатека")
            .scrollDisabled(true)
            .toolbar {
                Button("Править") {
                    
                }
                .foregroundColor(.red)
                
            }
            
        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
