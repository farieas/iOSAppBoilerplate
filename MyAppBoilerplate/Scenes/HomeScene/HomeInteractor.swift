//
//  HomeInteractor.swift
//  MyAppBoilerplate
//
//  Created by Farhan on 01/02/25.
//  Copyright © 2025 Farhan. All rights reserved.
//

protocol HomeBusinessLogic {
    func doSomething()
}

protocol HomeDataStore {
    var someData: String? { get set }
}

class HomeInteractor: HomeBusinessLogic, HomeDataStore {
    
    let presenter: HomePresenterLogic
    
    let worker = HomeWorker(store: HomeAPIStore())
    
    var someData: String?
    
    init(presenter: HomePresenterLogic, someData: String? = nil) {
        self.presenter = presenter
        self.someData = someData
    }
    
    
    func doSomething() {
        worker.doSomething {
            
        }
    }
    
}
