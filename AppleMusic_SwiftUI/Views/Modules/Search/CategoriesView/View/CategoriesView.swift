//
//  CategoriesView.swift
//  AppleMusic_SwiftUI
//
//  Created by Алексей Лосев on 15.01.2023.
//

import SwiftUI

struct CategoriesView: View {
    
    @State var categories = CategoriesModel.categoriesArray
    
    var columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
        ScrollView(showsIndicators: false) {
            LazyVGrid(columns: columns) {
                Section {
                    ForEach(categories, id: \.self) { item in
                        Image(item.image)
                            .resizable()
                            .frame(maxWidth: 200, maxHeight: 140)
                            .scaledToFit()
                            .cornerRadius(10)
                    }
                } header: {
                    Text("Browse Categories")
                        .font(.system(size: 23, weight: .black, design: .default))
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                        .padding(.top, 10)
                        
                }
                
            }
        }
        .padding([.leading, .trailing], 12)
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
            .preferredColorScheme(.dark)
    }
}
