//
//  ProfileTableViewCell.swift
//  Digital Arts Workshop
//
//  Created by Emerson Balahan Varona on 15/11/22.
//

import UIKit

class ProfileTableViewCell: UITableViewCell {

    static let identifier = "ProfileTableViewCell"
    
    private let collectionUIImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 10
        imageView.layer.masksToBounds = true
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "artImage")
        return imageView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(collectionUIImageView)
        
        configureConstraints()
    }
    
    private func configureConstraints() {
        let collectionUIImageViewConstraints = [
            collectionUIImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            collectionUIImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            collectionUIImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            collectionUIImageView.widthAnchor.constraint(equalToConstant: 100)
        ]
        
        NSLayoutConstraint.activate(collectionUIImageViewConstraints)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
}

