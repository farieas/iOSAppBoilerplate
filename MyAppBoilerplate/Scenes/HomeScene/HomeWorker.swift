//
//  HomeWorker.swift
//  MyAppBoilerplate
//
//  Created by Farhan on 01/02/25.
//  Copyright © 2025 Farhan. All rights reserved.
//

protocol HomeWorkerProtocol {
    func doSomething<T: Codable>() -> ResponseHandler<T>
}

class HomeWorker {
    
    let store: HomeWorkerProtocol
    
    init(store: HomeWorkerProtocol) {
        self.store = store
    }
    
    func doSomething<T: Codable>() -> ResponseHandler<T> {
        store.doSomething()
    }
    
}
