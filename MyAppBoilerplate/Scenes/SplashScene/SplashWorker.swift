//
//  SplashWorker.swift
//  MyAppBoilerplate
//
//  Created by Farhan on 31/01/25.
//  Copyright © 2025 Farhan. All rights reserved.
//

protocol SplashWorkerProtocol {
    func startTimer(handler: @escaping ()->())
}

class SplashWorker {
    
    let store: SplashWorkerProtocol
    
    init(store: SplashWorkerProtocol) {
        self.store = store
    }
    
    func startTimer(handler: @escaping ()->()) {
        self.store.startTimer(handler: handler)
    }
    
}
