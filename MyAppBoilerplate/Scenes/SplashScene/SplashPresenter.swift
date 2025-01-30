//
//  SplashPresenter.swift
//  MyAppBoilerplate
//
//  Created by Farhan on 30/01/25.
//  Copyright © 2025 Farhan. All rights reserved.
//

protocol SplashPresenterLogic {
    func presentNext()
}


class SplashPresenter: SplashPresenterLogic {
    
    weak var viewController: SplashDisplayLogic!
    
    init(viewController: SplashDisplayLogic!) {
        self.viewController = viewController
    }
    
    func presentNext() {
        viewController?.onViewReady()
    }
    
    
}
