//
//  SecondViewControllerForTabA.swift
//  CoordinatorMinimumExample
//
//  Created by Marcello Chuahy on 19/05/20.
//  Copyright © 2020 Applause Codes. All rights reserved.
//

import UIKit

public protocol SecondViewControllerForTabADelegate: class {
  func navigateToThirdViewControllerForTabA()
}

class SecondViewControllerForTabA: UIViewController {
  
  // MARK: - Properties
  weak var coordinator: SecondViewControllerForTabADelegate?
  private lazy var button: UIButton = { return UIButton(frame: .zero)}()
  
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
extension SecondViewControllerForTabA {
  public class func instantiate(coordinator: SecondViewControllerForTabADelegate?, title: String) -> SecondViewControllerForTabA {
    let viewController = SecondViewControllerForTabA()
    viewController.coordinator = coordinator
    viewController.title = title
    return viewController
  }
}

// MARK: - ViewCodeProtocol
extension SecondViewControllerForTabA: ViewCodeProtocol {
  
  private func setupView() {
    view = UIView(frame: .zero)
    view.backgroundColor = .white
  }
  
  func buildViewHierarchy() {
    view.addSubview(button)
  }
  
  func setupConstraints() {
    button.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      button.heightAnchor.constraint(equalToConstant: 44),
      button.widthAnchor.constraint(equalToConstant: 288),
      button.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
      button.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor)
    ])
  }
  
  func setupComplementaryConfiguration() {
    button.setTitle("ir para Tab A - Scene 3", for: .normal)
    button.setTitleColor(.white, for: .normal)
    button.backgroundColor = UIColor(red: 0/255, green: 125/255, blue: 255/255, alpha: 100/100)
    button.layer.cornerRadius = 4
    button.addTarget(self, action: #selector(navigateToThirdViewControllerForTabA(_:)), for: .touchUpInside)
  }
  
}

// MARK: - Coordinator Navigation
extension SecondViewControllerForTabA {
  @objc
  func navigateToThirdViewControllerForTabA(_ sender: Any) {
    coordinator?.navigateToThirdViewControllerForTabA()
  }
}
