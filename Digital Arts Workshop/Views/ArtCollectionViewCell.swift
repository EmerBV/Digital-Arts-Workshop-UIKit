//
//  ProfileCollectionViewCell.swift
//  Digital Arts Workshop
//
//  Created by Emerson Balahan Varona on 15/11/22.
//

import UIKit

class ArtCollectionViewCell: UICollectionViewCell {
    static let identifier = "ArtCollectionViewCell"
    
    private let artImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 10
        imageView.layer.masksToBounds = true
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "artImage")
        //imageView.backgroundColor = .red
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(artImageView)
    }
    
    required init(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        artImageView.frame = contentView.bounds
    }
    
}
