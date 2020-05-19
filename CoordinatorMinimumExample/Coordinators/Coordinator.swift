//
//  Coordinator.swift
//  CoordinatorMinimumExample
//
//  Created by Marcello Chuahy on 19/05/20.
//  Copyright © 2020 Applause Codes. All rights reserved.
//

import UIKit

protocol Coordinator: class {
  
  var childCoordinators: [Coordinator] { get set }
  var navigationController: UINavigationController { get set }
  
  func start()
  
}
