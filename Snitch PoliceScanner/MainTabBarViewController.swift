//
//  MainTabBarViewController.swift
//  Snitch PoliceScanner
//
//  Created by Kwaw Annan on 10/16/22.
//

import UIKit

class MainTabBarViewController : UITabBarController
{
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        
        
        let vc1 = UINavigationController(rootViewController: BrowseViewController())
        let vc2 = UINavigationController(rootViewController: LocalViewController())
        let vc3 = UINavigationController(rootViewController: ViewController())
        let vc4 = UINavigationController(rootViewController: SettingsViewController())
        
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc2.tabBarItem.image = UIImage(systemName: "play.circle")
        vc3.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        vc4.tabBarItem.image = UIImage(systemName: "arrow.down.to.line")
        
        vc1.title = "Home"
        vc2.title = "Feeds"
        vc3.title = "Favorites"
        vc4.title = "Settings"
        
        
        tabBar.tintColor = .label
        
        setViewControllers([vc1,vc2,vc3,vc4], animated: true)




    }
}
