//
//  CoordinatorForTabB.swift
//  CoordinatorMinimumExample
//
//  Created by Marcello Chuahy on 19/05/20.
//  Copyright © 2020 Applause Codes. All rights reserved.
//

import UIKit

class CoordinatorForTabB: NSObject, Coordinator {
  
  // MARK: - Coordinator Properties
  var childCoordinators: [Coordinator] = []
  var navigationController: UINavigationController
  
  private lazy var secondViewControllerForTabB  =  SecondViewControllerForTabB.instantiate(coordinator: self, title: "TAB A - Scene 2")
  private lazy var thirdViewControllerForTabB   =   ThirdViewControllerForTabB.instantiate(                   title: "TAB A - Scene 3")
  
  // MARK: - Initializers
  init(navigationController: UINavigationController) {
    self.navigationController = navigationController
  }
  
  func start() {
    navigationController.pushViewController(secondViewControllerForTabB, animated: true)
  }
  
}

extension CoordinatorForTabB: SecondViewControllerForTabBDelegate {
  func navigateToThirdViewControllerForTabB() {
    navigationController.pushViewController(thirdViewControllerForTabB, animated: true)
  }
}

