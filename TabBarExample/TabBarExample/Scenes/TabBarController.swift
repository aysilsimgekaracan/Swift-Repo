//
//  TabBar.swift
//  TabBarExample
//
//  Created by Ayşıl Simge Karacan on 23.10.2023.
//

import UIKit

class TabBarController: UITabBarController {
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let homeViewController = HomeViewController()
    homeViewController.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "home"), tag: 0)
    
    let discoverViewController = DiscoverViewController()
    discoverViewController.tabBarItem = UITabBarItem(title: "Discover", image: UIImage(systemName: "globe"), tag: 1)
    
    let flightsViewController = FlightsViewController()
    flightsViewController.tabBarItem = UITabBarItem(title: "Flights", image: UIImage(systemName: "airplane"), tag: 2)
    
    let mapViewController = MapViewController()
    mapViewController.tabBarItem = UITabBarItem(title: "Map", image: UIImage(systemName: "map"), tag: 3)
    
    
    viewControllers = [homeViewController, discoverViewController, flightsViewController, mapViewController]
    
    
  }
}
