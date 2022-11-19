//
//  ArtDetailsTableViewCell.swift
//  Digital Arts Workshop
//
//  Created by Emerson Balahan Varona on 19/11/22.
//

import UIKit

class ArtDetailsTableViewCell: UITableViewCell {

    static let identifier = "ArtDetailsTableViewCell"
    
    private let artDetailsUIImageView: UIImageView = {
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
        contentView.addSubview(artDetailsUIImageView)
        
        configureConstraints()
    }
    
    private func configureConstraints() {
        let artDetailsUIImageViewConstraints = [
            artDetailsUIImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            artDetailsUIImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            artDetailsUIImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            artDetailsUIImageView.widthAnchor.constraint(equalToConstant: 50),
            artDetailsUIImageView.heightAnchor.constraint(equalToConstant: 100)
        ]
        
        NSLayoutConstraint.activate(artDetailsUIImageViewConstraints)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
