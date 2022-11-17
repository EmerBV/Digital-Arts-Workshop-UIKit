//
//  ProfileViewController.swift
//  Digital Arts Workshop
//
//  Created by Emerson Balahan Varona on 14/11/22.
//

import UIKit

class ProfileViewController: UIViewController {
    
    private let profileTableView: UITableView = {
        let tableView = UITableView()
        tableView.register(ProfileCollectionTableViewCell.self, forCellReuseIdentifier: ProfileCollectionTableViewCell.identifier)
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationItem.title = "Profile"
        view.addSubview(profileTableView)
        
        // Importo la vista de la cabecera
        let headerView = ProfileTableViewHeader(frame: CGRect(x: 0, y: 0, width: profileTableView.frame.width, height: 380))
        
        // Esto es para fijar las características que tendrá mi tabla. Debemos poner la extensión abajo.
        profileTableView.delegate = self
        profileTableView.dataSource = self
        // Añado la vista de la cabecera
        profileTableView.tableHeaderView = headerView

    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        profileTableView.frame = view.bounds
    }
    
}

extension ProfileViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ProfileCollectionTableViewCell.identifier, for: indexPath) as? ProfileCollectionTableViewCell else {
            return UITableViewCell()
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
   
}
