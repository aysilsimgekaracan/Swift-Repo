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
    
    let homeStoryboard = UIStoryboard(name: "HomeView", bundle: nil)
    let homeViewController = homeStoryboard.instantiateViewController(withIdentifier: "Home")
    homeViewController.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 0)
    
    let discoverStoryboard = UIStoryboard(name: "DiscoverView", bundle: nil)
    let discoverViewController = discoverStoryboard.instantiateViewController(withIdentifier: "Discover")
    discoverViewController.tabBarItem = UITabBarItem(title: "Discover", image: UIImage(systemName: "globe"), tag: 1)
    
    let flightsStoryboard = UIStoryboard(name: "FlightsView", bundle: nil)
    let flightsViewController = flightsStoryboard.instantiateViewController(withIdentifier: "Flights")
    flightsViewController.tabBarItem = UITabBarItem(title: "Flights", image: UIImage(systemName: "airplane"), tag: 2)
    
    
    let mapStoryboard = UIStoryboard(name: "MapView", bundle: nil)
    let mapViewController = mapStoryboard.instantiateViewController(withIdentifier: "Map")
    mapViewController.tabBarItem = UITabBarItem(title: "Map", image: UIImage(systemName: "map"), tag: 3)
    
    viewControllers = [homeViewController, discoverViewController, flightsViewController, mapViewController]
  }
}
