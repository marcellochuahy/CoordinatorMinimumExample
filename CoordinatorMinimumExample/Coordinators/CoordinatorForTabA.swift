//
//  CoordinatorForTabA.swift
//  CoordinatorMinimumExample
//
//  Created by Marcello Chuahy on 19/05/20.
//  Copyright © 2020 Applause Codes. All rights reserved.
//

import UIKit

class CoordinatorForTabA: NSObject, Coordinator {
  
  // MARK: - Coordinator Properties
  var childCoordinators: [Coordinator] = []
  var navigationController: UINavigationController
  
  private lazy var initialViewControllerForTabA = InitialViewControllerForTabA.instantiate(coordinator: self, title: "TAB A - Scene 1")
  private lazy var secondViewControllerForTabA  =  SecondViewControllerForTabA.instantiate(coordinator: self, title: "TAB A - Scene 2")
  private lazy var thirdViewControllerForTabA   =   ThirdViewControllerForTabA.instantiate(                   title: "TAB A - Scene 3")
  
  // MARK: - Initializers
  init(navigationController: UINavigationController) {
    self.navigationController = navigationController
  }
  
  func start() {
    let tabBarItem = UITabBarItem(title: "Tab A",
                                  image: UIImage(named: "A"),
                                  selectedImage: UIImage(named: "ASelected"))
    initialViewControllerForTabA.tabBarItem = tabBarItem
    navigationController.viewControllers = [initialViewControllerForTabA]
  }
  
}

extension CoordinatorForTabA: InitialViewControllerForTabADelegate {
  func navigateToSecondViewControllerForTabA() {
    navigationController.pushViewController(secondViewControllerForTabA, animated: true)
  }
}

extension CoordinatorForTabA: SecondViewControllerForTabADelegate {
  func navigateToThirdViewControllerForTabA() {
    navigationController.pushViewController(thirdViewControllerForTabA, animated: true)
  }
}
