//
//  HomePresenter.swift
//  MyAppBoilerplate
//
//  Created by Farhan on 01/02/25.
//  Copyright © 2025 Farhan. All rights reserved.
//

protocol HomePresenterLogic {
    func presentSomething()
}


class HomePresenter: HomePresenterLogic {
    
    weak var viewController: HomeDisplayLogic!
    
    
    init(viewController: HomeDisplayLogic!) {
        self.viewController = viewController
    }
    
    func presentSomething() {
        
    }
    
}
