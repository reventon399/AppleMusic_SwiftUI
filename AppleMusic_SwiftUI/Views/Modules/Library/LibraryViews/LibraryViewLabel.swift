//
//  LibraryViewLabel.swift
//  AppleMusic_SwiftUI
//
//  Created by Алексей Лосев on 11.01.2023.
//

import SwiftUI

struct LibraryViewLabel: View {
    var body: some View {
        VStack(alignment: .center) {
            Text("Ищете свою музыку?")
                .multilineTextAlignment(.center)
                .bold()
                .font(.system(size: 29))
            Text("Здесь появится купленная вами в Itunes Store музыка")
                .foregroundColor(Color.gray)
                .multilineTextAlignment(.center)
                .font(.system(size: 22))
        }
        .frame(width: 400)
    }
}

struct LibraryViewLabel_Previews: PreviewProvider {
    static var previews: some View {
        LibraryViewLabel()
            .preferredColorScheme(.dark)
    }
}
