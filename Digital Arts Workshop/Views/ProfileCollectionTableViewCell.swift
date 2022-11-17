//
//  ProfileCollectionTableViewCell.swift
//  Digital Arts Workshop
//
//  Created by Emerson Balahan Varona on 16/11/22.
//

import UIKit

class ProfileCollectionTableViewCell: UITableViewCell {
    
    static let identifier = "ProfileCollectionTableViewCell"

    private let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.itemSize = CGSize(width: 120, height: 200)
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(ArtCollectionViewCell.self, forCellWithReuseIdentifier: ArtCollectionViewCell.identifier)

        return collectionView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .systemGray
        contentView.addSubview(collectionView)
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        collectionView.frame = contentView.bounds
    }

}

extension ProfileCollectionTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ArtCollectionViewCell.identifier, for: indexPath) as? ArtCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.backgroundColor = .systemGray
        cell.layer.cornerRadius = 10
        return cell
    }
    
}
