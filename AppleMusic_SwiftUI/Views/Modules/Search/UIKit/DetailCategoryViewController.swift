//
//  DetailCategoryViewController.swift
//  AppleMusic_SwiftUI
//
//  Created by Алексей Лосев on 16.01.2023.
//

import UIKit
import SwiftUI

class DetailCategoryViewController: UIHostingController<DetailCategoriesView> {

    init() {
        super.init(rootView: DetailCategoriesView())
    }

    @objc required dynamic init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
