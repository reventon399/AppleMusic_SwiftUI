//
//  CategoryHeader.swift
//  AppleMusic_SwiftUI
//
//  Created by Алексей Лосев on 16.01.2023.
//

import UIKit

class CategoryHeader: UICollectionReusableView {
    
        static var identifier = "CategoryHeader"

    // MARK: - Outlets

    private lazy var headerTitle: UILabel = {
        let header = UILabel()
        header.translatesAutoresizingMaskIntoConstraints = false
        header.text = "Search by category"
        header.textAlignment = .left
        header.textColor = .black
        header.font = .systemFont(ofSize: 22, weight: .bold)
        return header
    }()

    // MARK: - Lifecycle

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHeirarchy()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


    // MARK: - Setup

    private func setupHeirarchy() {
        addSubview(headerTitle)
    }

    private func setupLayout() {
        NSLayoutConstraint.activate([
            headerTitle.topAnchor.constraint(equalTo: self.topAnchor),
            headerTitle.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            headerTitle.widthAnchor.constraint(equalTo: self.widthAnchor),
            headerTitle.heightAnchor.constraint(equalTo: self.heightAnchor)
        ])
    }
}
