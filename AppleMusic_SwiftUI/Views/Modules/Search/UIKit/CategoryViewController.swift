//
//  CategoryViewController.swift
//  AppleMusic_SwiftUI
//
//  Created by Алексей Лосев on 16.01.2023.
//

import UIKit

class CategoryViewController: UIViewController {
    
    // MARK: - Outlets
    
    private lazy var categoryCollection: UICollectionView = {
        let collection = UICollectionView(frame: .zero,
                                          collectionViewLayout: setupCollectionLayout())
        collection.register(CategoryCollectionViewCell.self, forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier)
        collection.register(CategoryHeader.self, forCellWithReuseIdentifier: CategoryHeader.identifier)
        collection.translatesAutoresizingMaskIntoConstraints = false
        collection.delegate = self
        collection.dataSource = self
        
        return collection
    }()

    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupHierarchy()
        setupLayout()
    }
    
    // MARK: - Setup
    
    private func setupView() {
        view.backgroundColor = .systemBackground
    }
    
    private func setupHierarchy() {
        view.addSubview(categoryCollection)
    }
    
    private func setupLayout() {
        
    }
    
    private func setupCollectionLayout() -> UICollectionViewCompositionalLayout {
        return UICollectionViewCompositionalLayout() { sectionIndex, _ in
            let itemSize = NSCollectionLayoutSize(
                widthDimension: .fractionalWidth(0.5),
                heightDimension: .fractionalHeight(1))
            
            let item = NSCollectionLayoutItem(layoutSize: itemSize)
            item.contentInsets = .init(
                top: 4,
                leading: 4,
                bottom: 4,
                trailing: 4)
            
            let groupSize = NSCollectionLayoutSize(
                widthDimension: .fractionalWidth(1),
                heightDimension: .fractionalHeight(1))
            
            let group = NSCollectionLayoutGroup.horizontal(
                layoutSize: groupSize,
                subitems: [item]
            )

            let headerSize = NSCollectionLayoutSize(
                widthDimension: .fractionalWidth(1),
                heightDimension: .absolute(45)
            )
            let header = NSCollectionLayoutBoundarySupplementaryItem(
                layoutSize: headerSize,
                elementKind: UICollectionView.elementKindSectionHeader,
                alignment: .top
            )
            header.contentInsets.leading = 4
            header.contentInsets.top = 4
            header.contentInsets.bottom = 4

            let section = NSCollectionLayoutSection(group: group)
            section.contentInsets.leading = 8
            section.contentInsets.trailing = 8
            section.boundarySupplementaryItems = [header]
            return section
        }
    }
}

extension CategoryViewController: UICollectionViewDataSource, UICollectionViewDelegate {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return CategoriesModel.categoriesArray.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as? CategoryCollectionViewCell else { return UICollectionViewCell() }
        let category = CategoriesModel.categoriesArray[indexPath.row]
        cell.setData(category: category)
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        guard let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: CategoryHeader.identifier, for: indexPath) as? CategoryHeader else { return UICollectionReusableView() }
        return header
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        navigationController?.pushViewController(DetailCategoryViewController(), animated: true)
    }
}
