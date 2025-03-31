//
//  RMTabBarController.swift
//  RickAndMorty
//
//  Created by Wael on 31/03/2025.
//

import UIKit

class RMTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupTabBar()
    }
    
    
    func setupTabBar() {
        let charactersVC = RMCharacters()
        let episodesVC = RMEpisodes()
        let locationsVC = RMLocations()
        let settingsVC = RMSettings()
        
        let charactersNav = UINavigationController(rootViewController: charactersVC)
        let episodesNav = UINavigationController(rootViewController: episodesVC)
        let locationsNav = UINavigationController(rootViewController: locationsVC)
        let settingsNav = UINavigationController(rootViewController: settingsVC)
        
        charactersNav.tabBarItem = UITabBarItem(title: "Character", image: UIImage(systemName: "person"), tag: 1)
        episodesVC.tabBarItem = UITabBarItem(title: "Episode", image: UIImage(systemName: "tv"), tag: 2)
        locationsVC.tabBarItem = UITabBarItem(title: "Location", image: UIImage(systemName: "globe"), tag: 3)
        settingsVC.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gear"), tag: 4)
        
        for controller in [charactersNav, episodesNav, locationsNav, settingsNav] {
            controller.navigationBar.prefersLargeTitles = true
            controller.navigationItem.largeTitleDisplayMode = .always
        }
        
        setViewControllers([charactersNav, episodesNav, locationsNav, settingsNav], animated: true)
        
        
    }
    
}
