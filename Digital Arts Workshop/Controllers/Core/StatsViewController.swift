//
//  StatsViewController.swift
//  Digital Arts Workshop
//
//  Created by Emerson Balahan Varona on 16/11/22.
//

import UIKit

class StatsViewController: UIViewController {

    private let statsTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Stats"
        label.font = .systemFont(ofSize: 32, weight: .bold)
        return label
    }()
    
    private let statsTableView: UITableView = {
        let tableView = UITableView()
        tableView.register(StatsTableViewCell.self, forCellReuseIdentifier: StatsTableViewCell.identifier)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        //navigationItem.title = "Stats"
        view.addSubview(statsTitleLabel)
        view.addSubview(statsTableView)
        
        statsTableView.delegate = self
        statsTableView.dataSource = self

        configureConstraints()
    }
    
    private func configureConstraints() {
        let statsTitleLabelConstraints = [
            statsTitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            statsTitleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
        ]
        
        let statsTableViewConstraints = [
            statsTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            statsTableView.topAnchor.constraint(equalTo: statsTitleLabel.bottomAnchor, constant: 20),
            statsTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            statsTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ]
        
        NSLayoutConstraint.activate(statsTitleLabelConstraints)
        NSLayoutConstraint.activate(statsTableViewConstraints)
    }

}

extension StatsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: StatsTableViewCell.identifier, for: indexPath) as? StatsTableViewCell else {
            return UITableViewCell()
        }
        
        return cell
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let defaultOffset = view.safeAreaInsets.top
        let offset = scrollView.contentOffset.y + defaultOffset
        
        navigationController?.navigationBar.transform = .init(translationX: 0, y: min(0, -offset))
    }
    
}
