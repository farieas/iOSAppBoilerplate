//
//  SplashInteractor.swift
//  MyAppBoilerplate
//
//  Created by Farhan on 30/01/25.
//  Copyright © 2025 Farhan. All rights reserved.
//

protocol SplashBusinessLogic {
    func onViewReady()
}

protocol SplashDataStore {
    var someData: String? { get set }
}

class SplashInteractor: SplashBusinessLogic, SplashDataStore {
    
    var someData: String?
    
    let presenter: SplashPresenterLogic
    let worker = SplashWorker(store: SplashTimer())
    
    init(presenter: SplashPresenterLogic) {
        self.presenter = presenter
    }
    
    
    func onViewReady() {
        worker.startTimer { [weak self] in
            guard let self = self else { return }
            self.presenter.presentNext()
        }
    }
    
}
