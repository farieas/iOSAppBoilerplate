//
//  HomeRouter.swift
//  MyAppBoilerplate
//
//  Created by ASPLAPMAC24 on 01/02/25.
//  Copyright © 2025 Farhan. All rights reserved.
//

import Foundation

protocol HomeRouterLogic {
    func navigateToDetail()
}

protocol HomeDataPassing {
    var dataStore: HomeDataStore? { get }
}


class HomeRouter: NSObject, HomeRouterLogic, HomeDataPassing {
    
    weak var viewController: HomeViewController!
    var dataStore: HomeDataStore?
    
    init(viewController: HomeViewController, dataStore: HomeDataStore) {
        self.viewController = viewController
        self.dataStore = dataStore
    }
    
    func navigateToDetail() {
        print("Navigate to Detail")
    }
}
