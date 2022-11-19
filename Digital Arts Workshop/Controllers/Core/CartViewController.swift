//
//  CartViewController.swift
//  Digital Arts Workshop
//
//  Created by Emerson Balahan Varona on 14/11/22.
//

import UIKit

class CartViewController: UIViewController {
    
    //private let cartTitleLabel: UILabel = {
        //let label = UILabel()
        //label.translatesAutoresizingMaskIntoConstraints = false
        //label.text = "Your cart"
        //label.font = .systemFont(ofSize: 32, weight: .bold)
        //return label
    //}()
    
    private let cartTableView: UITableView = {
        let tableView = UITableView()
        tableView.register(CartTableViewCell.self, forCellReuseIdentifier: CartTableViewCell.identifier)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    private let itemsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "4 items"
        label.font = .systemFont(ofSize: 22, weight: .semibold)
        return label
    }()
    
    private let totalPriceLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Total price"
        label.font = .systemFont(ofSize: 22, weight: .semibold)
        return label
    }()
    
    private let purchaseButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Complete purchase", for: .normal)
        button.tintColor = .white
        button.titleLabel?.font = .systemFont(ofSize: 16, weight: .bold)
        button.backgroundColor = UIColor(red: 0.13, green: 0.51, blue: 0.89, alpha: 1.00)
        button.layer.masksToBounds = true
        button.layer.cornerRadius = 12
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationItem.title = "Your cart"
        //view.addSubview(cartTitleLabel)
        view.addSubview(cartTableView)
        view.addSubview(itemsLabel)
        view.addSubview(totalPriceLabel)
        view.addSubview(purchaseButton)
        
        cartTableView.delegate = self
        cartTableView.dataSource = self

        configureConstraints()
    }
    
    private func configureConstraints() {
        //let cartTitleLabelConstraints = [
            //cartTitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            //cartTitleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
        //]
        
        let cartTableViewConstraints = [
            cartTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            //cartTableView.topAnchor.constraint(equalTo: cartTitleLabel.bottomAnchor, constant: 10),
            cartTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            cartTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ]
        
        let itemsLabelConstraints = [
            itemsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60),
            itemsLabel.topAnchor.constraint(equalTo: cartTableView.bottomAnchor, constant: 20),
            //itemsLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            //itemsLabel.widthAnchor.constraint(equalToConstant: view.frame.width - 40),
            itemsLabel.heightAnchor.constraint(equalToConstant: 20)
        ]
        
        let totalPriceLabelConstraints = [
            totalPriceLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60),
            totalPriceLabel.topAnchor.constraint(equalTo: itemsLabel.bottomAnchor, constant: 20),
            //totalPriceLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            totalPriceLabel.widthAnchor.constraint(equalToConstant: view.frame.width - 40),
            totalPriceLabel.heightAnchor.constraint(equalToConstant: 20),
        ]
        
        let purchaseButtonConstraints = [
            purchaseButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            purchaseButton.topAnchor.constraint(equalTo: totalPriceLabel.bottomAnchor, constant: 20),
            purchaseButton.widthAnchor.constraint(equalToConstant: 180),
            purchaseButton.heightAnchor.constraint(equalToConstant: 50),
            purchaseButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20)
        ]
        
        //NSLayoutConstraint.activate(cartTitleLabelConstraints)
        NSLayoutConstraint.activate(cartTableViewConstraints)
        NSLayoutConstraint.activate(itemsLabelConstraints)
        NSLayoutConstraint.activate(totalPriceLabelConstraints)
        NSLayoutConstraint.activate(purchaseButtonConstraints)
    }

}

extension CartViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CartTableViewCell.identifier, for: indexPath) as? CartTableViewCell else {
            return UITableViewCell()
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
}
