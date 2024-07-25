//
//  TabBarVC.swift
//  MusicApp
//
//  Created by Apple on 25.07.24.
//

import UIKit

class TabBarVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.barTintColor = .clear
        tabBar.tintColor = .white
        tabBar.unselectedItemTintColor = .systemGray
        
        let homeViewController = HomeVC()
        homeViewController.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 0)
        
        let searchViewController = SearchVC()
        searchViewController.tabBarItem = UITabBarItem(title: "Search", image: UIImage(systemName: "magnifyingglass"), tag: 1)
        
        let bookmarksViewController = BookmarksVC()
        bookmarksViewController.tabBarItem = UITabBarItem(title: "Bookmarks", image: UIImage(systemName: "books.vertical.fill"), tag: 2)
        
        let watchViewController = WatchVC()
        watchViewController.tabBarItem = UITabBarItem(title: "Watch", image: UIImage(systemName: "play.rectangle.on.rectangle"), tag: 3)
        
        let tabBarList = [homeViewController, searchViewController, bookmarksViewController, watchViewController]
        
        viewControllers = tabBarList.map { UINavigationController(rootViewController: $0) }
    }
}
