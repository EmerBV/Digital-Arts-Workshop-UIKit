//
//  SearchViewController.swift
//  Digital Arts Workshop
//
//  Created by Emerson Balahan Varona on 14/11/22.
//

import UIKit

class SearchViewController: UIViewController {

    private let searchTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Search"
        label.font = .systemFont(ofSize: 32, weight: .bold)
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        //navigationItem.title = "Search"
        view.addSubview(searchTitleLabel)

        configureConstraints()
    }
    
    private func configureConstraints() {
        let searchTitleLabelConstraints = [
            searchTitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            searchTitleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
        ]
        
        NSLayoutConstraint.activate(searchTitleLabelConstraints)
    }

}
