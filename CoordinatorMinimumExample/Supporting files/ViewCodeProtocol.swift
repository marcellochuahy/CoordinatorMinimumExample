//
//  ViewCodeProtocol.swift
//  CoordinatorMinimumExample
//
//  Created by Marcello Chuahy on 19/05/20.
//  Copyright © 2020 Applause Codes. All rights reserved.
//

protocol ViewCodeProtocol: class {
  
  func buildViewHierarchy()
  func setupConstraints()
  func setupComplementaryConfiguration()
  
  func callsViewCodeMethodsInPreSetOrder()
  
}

extension ViewCodeProtocol {
  
  func callsViewCodeMethodsInPreSetOrder() {
    buildViewHierarchy()
    setupConstraints()
    setupComplementaryConfiguration()
  }
  
}

