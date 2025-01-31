//
//  HomeWorker.swift
//  MyAppBoilerplate
//
//  Created by ASPLAPMAC24 on 01/02/25.
//  Copyright © 2025 Farhan. All rights reserved.
//

protocol HomeWorkerProtocol {
    func doSomething(handler: @escaping () -> Void)
}

class HomeWorker {
    
    let store: HomeWorkerProtocol
    
    init(store: HomeWorkerProtocol) {
        self.store = store
    }
    
    func doSomething(handler: @escaping () -> Void) {
        store.doSomething(handler: handler)
    }
    
}
