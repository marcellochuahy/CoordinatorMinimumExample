//
//  ThirdViewControllerForTabB.swift
//  CoordinatorMinimumExample
//
//  Created by Marcello Chuahy on 19/05/20.
//  Copyright © 2020 Applause Codes. All rights reserved.
//

import UIKit

class ThirdViewControllerForTabB: UIViewController {
  
  // MARK: - Properties
  private lazy var label: UILabel = { return UILabel(frame: .zero)}()
  
  // MARK: - Life cycle
  override func loadView() {
    setupView()
    callsViewCodeMethodsInPreSetOrder()
  }
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
}

// MARK: - Constructors
extension ThirdViewControllerForTabB {
  public class func instantiate(title: String) -> ThirdViewControllerForTabB {
    let viewController = ThirdViewControllerForTabB()
    viewController.title = title
    return viewController
  }
}

// MARK: - ViewCodeProtocol
extension ThirdViewControllerForTabB: ViewCodeProtocol {
  
  private func setupView() {
    view = UIView(frame: .zero)
    view.backgroundColor = .white
  }
  
  func buildViewHierarchy() {
    view.addSubview(label)
  }
  
  func setupConstraints() {
    label.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      label.heightAnchor.constraint(equalToConstant: 88),
      label.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
      label.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
      label.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
      label.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor)
    ])
  }
  
  func setupComplementaryConfiguration() {
    label.text = "Essa é a última scene da Tab B"
    label.textAlignment = .center
  }
  
}


