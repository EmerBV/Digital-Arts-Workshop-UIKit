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
        let vc2 = UINavigationController(rootViewController: HomeViewController())
        let vc3 = UINavigationController(rootViewController: HomeViewController())
        let vc4 = UINavigationController(rootViewController: HomeViewController())
        
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc1.tabBarItem.selectedImage = UIImage(systemName: "house.fill")
        
        vc2.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        
        vc3.tabBarItem.image = UIImage(systemName: "person.crop.circle")
        vc3.tabBarItem.selectedImage = UIImage(systemName: "person.crop.circle.fill")
        
        vc4.tabBarItem.image = UIImage(systemName: "cart")
        vc4.tabBarItem.selectedImage = UIImage(systemName: "cart.fill")
        
        tabBar.tintColor = .label
        
        setViewControllers([vc1, vc2, vc3, vc4], animated: true)
    }

}

