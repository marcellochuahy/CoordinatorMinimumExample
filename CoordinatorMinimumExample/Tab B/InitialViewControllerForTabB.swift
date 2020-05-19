//
//  InitialViewControllerForTabB.swift
//  CoordinatorMinimumExample
//
//  Created by Marcello Chuahy on 19/05/20.
//  Copyright © 2020 Applause Codes. All rights reserved.
//

import UIKit


class InitialViewControllerForTabB: UIViewController {
  
  // MARK: - Properties
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
extension InitialViewControllerForTabB {
  public class func instantiate(title: String) -> InitialViewControllerForTabB {
    let viewController = InitialViewControllerForTabB()
    viewController.title = title
    return viewController
  }
}

// MARK: - ViewCodeProtocol
extension InitialViewControllerForTabB: ViewCodeProtocol {
  
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
    button.setTitle("ir para Tab B - Scene 2", for: .normal)
    button.setTitleColor(.white, for: .normal)
    button.backgroundColor = UIColor(red: 0/255, green: 125/255, blue: 255/255, alpha: 100/100)
    button.layer.cornerRadius = 4
    button.addTarget(self, action: #selector(navigateToSecondViewControllerForTabB(_:)), for: .touchUpInside)
  }
  
}

// MARK: - Coordinator Navigation
extension InitialViewControllerForTabB {
  @objc
  func navigateToSecondViewControllerForTabB(_ sender: Any) {
    
    guard let navigationController = navigationController else { return }
    let coordinatorForTabB = CoordinatorForTabB(navigationController: navigationController)
    coordinatorForTabB.start()
    
  }
}

