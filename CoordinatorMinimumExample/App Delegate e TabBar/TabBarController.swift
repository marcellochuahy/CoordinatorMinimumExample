//
//  TabBarController.swift
//  CoordinatorMinimumExample
//
//  Created by Marcello Chuahy on 19/05/20.
//  Copyright © 2020 Applause Codes. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
  
  let coordinatorForTabA = CoordinatorForTabA(navigationController: UINavigationController())
  let navigationControllerForTabB =
    UINavigationController(rootViewController: InitialViewControllerForTabB.instantiate(title: "TAB B - Scene 1"))

  override func viewDidLoad() {
    super.viewDidLoad()
    coordinatorForTabA.start()
    setUpTabBarItens()
    setUpViewControllers()
    setUpTabBarStyle()
  }
  
  func setUpTabBarItens() {
    navigationControllerForTabB.tabBarItem = UITabBarItem(title: "Tab B",
                                                           image: UIImage(named: "B"),
                                                           selectedImage: UIImage(named: "BSelected"))
  }
  
  func setUpViewControllers() {
    self.viewControllers = [coordinatorForTabA.navigationController, navigationControllerForTabB]
  }
  
  func setUpTabBarStyle() {
    tabBar.barTintColor = UIColor(red: 0/255, green: 125/255, blue: 255/255, alpha: 100/100)
    tabBar.tintColor = .white
    tabBar.unselectedItemTintColor = .darkGray
  }
  
}
