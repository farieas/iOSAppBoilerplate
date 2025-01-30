//
//  SplashRouter.swift
//  MyAppBoilerplate
//
//  Created by Farhan on 31/01/25.
//  Copyright © 2025 Farhan. All rights reserved.
//

import Foundation

protocol SplashRouterLogic {
    func navigateToHome()
    func navigateToLogin()
}

protocol SplashDataPassing {
    var dataStore: SplashDataStore? { get }
}

class SplashRouter: NSObject, SplashRouterLogic, SplashDataPassing {
    
    weak var viewController: SplashViewController!
    
    var dataStore: SplashDataStore?
    
    init(viewController: SplashViewController, dataStore: SplashDataStore) {
        self.viewController = viewController
        self.dataStore = dataStore
    }
    
    func navigateToHome() {
        let vc = HomeViewController()
        viewController?.show(vc, sender: nil)
    }
    
    func navigateToLogin() {
        let vc = LoginViewController()
        viewController?.show(vc, sender: nil)
    }
    
    
}
