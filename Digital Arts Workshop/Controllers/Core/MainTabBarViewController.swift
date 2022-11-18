//
//  ViewController.swift
//  Digital Arts Workshop
//
//  Created by Emerson Balahan Varona on 13/11/22.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: StatsViewController())
        let vc3 = UINavigationController(rootViewController: SearchViewController())
        let vc4 = UINavigationController(rootViewController: ProfileViewController())
        let vc5 = UINavigationController(rootViewController: CartViewController())
        
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc1.tabBarItem.selectedImage = UIImage(systemName: "house.fill")
        
        vc2.tabBarItem.image = UIImage(systemName: "chart.bar")
        vc2.tabBarItem.selectedImage = UIImage(systemName: "chart.bar.fill")
        
        vc3.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        
        vc4.tabBarItem.image = UIImage(systemName: "person.crop.circle")
        vc4.tabBarItem.selectedImage = UIImage(systemName: "person.crop.circle.fill")
        
        vc5.tabBarItem.image = UIImage(systemName: "cart")
        vc5.tabBarItem.selectedImage = UIImage(systemName: "cart.fill")
        
        tabBar.tintColor = .label
        
        setViewControllers([vc1, vc2, vc3, vc4, vc5], animated: true)
    }

}

