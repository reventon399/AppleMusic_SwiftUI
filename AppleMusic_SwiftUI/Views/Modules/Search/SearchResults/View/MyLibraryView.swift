//
//  MyLubraryView.swift
//  AppleMusic_SwiftUI
//
//  Created by Алексей Лосев on 15.01.2023.
//

import SwiftUI

struct MyLibraryView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("Your library is empty")
                .frame(width: 150)
                .font(.system(size: 27))
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
            Spacer()
        }
    }
}

struct MyLibraryView_Previews: PreviewProvider {
    static var previews: some View {
        MyLibraryView()
            .preferredColorScheme(.dark)
    }
}
