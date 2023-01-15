//
//  CategoryCollectionViewCell.swift
//  AppleMusic_SwiftUI
//
//  Created by Алексей Лосев on 16.01.2023.
//

import UIKit

class CategoryCollectionViewCell: UICollectionViewCell {

    // MARK: - Properties

    static let identifier = "CategoryCollectionViewCell"

    // MARK: - Outlets

    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 10
        return imageView
    }()

    private lazy var title: UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.textAlignment = .left
        title.numberOfLines = 2
        title.font = .systemFont(ofSize: 16, weight: .black)
        title.textColor = .white
        return title
    }()

    // MARK: - Lifecycle

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        setupHierarchy()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Setups

    private func setupHierarchy() {
        addSubview(imageView)
        imageView.addSubview(title)
    }

    private func setupLayout() {
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: self.topAnchor),
            imageView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),

            title.widthAnchor.constraint(equalTo: imageView.widthAnchor),
            title.leadingAnchor.constraint(equalTo: imageView.leadingAnchor, constant: 10),
            title.bottomAnchor.constraint(equalTo: imageView.bottomAnchor, constant: -12)
        ])
    }

    func setData(category: CategoriesModel) {
        imageView.image = UIImage(named: category.image)
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        imageView.image = nil
    }
}
