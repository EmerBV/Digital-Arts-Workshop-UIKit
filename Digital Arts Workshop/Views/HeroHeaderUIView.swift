//
//  HeroHeaderUIView.swift
//  Digital Arts Workshop
//
//  Created by Emerson Balahan Varona on 14/11/22.
//

import UIKit

class HeroHeaderUIView: UIView {
    
    private let heroImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "heroImage")
        return imageView
    }()
    
    private func addGradient() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [
            UIColor.clear.cgColor,
            UIColor.systemBackground.cgColor
        ]
        gradientLayer.frame = bounds
        layer.addSublayer(gradientLayer)
    }
    
    private let heroLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "Explore, collect, and sell Digital Arts."
        label.font = .systemFont(ofSize: 32, weight: .heavy)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.textColor = .label
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(heroImageView)
        addGradient()
        
        addSubview(heroLabel)
        configureConstraints()
    }
    
    private func configureConstraints() {
        let heroLabelConstraints = [
            heroLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            heroLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            heroLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20),
        ]
        
        NSLayoutConstraint.activate(heroLabelConstraints)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        heroImageView.frame = bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
