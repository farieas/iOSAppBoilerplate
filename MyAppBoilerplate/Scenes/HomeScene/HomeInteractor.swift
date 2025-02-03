//
//  HomeInteractor.swift
//  MyAppBoilerplate
//
//  Created by Farhan on 01/02/25.
//  Copyright © 2025 Farhan. All rights reserved.
//

import Combine

protocol HomeBusinessLogic {
    func doSomething()
}

protocol HomeDataStore {
    var someData: String? { get set }
}

class HomeInteractor: HomeBusinessLogic, HomeDataStore {
  
    let presenter: HomePresenterLogic
    
    let worker = HomeWorker(store: HomeAPIStore())
    var cancellables : Set<AnyCancellable> = []
    
    var someData: String?
    
    init(presenter: HomePresenterLogic, someData: String? = nil) {
        self.presenter = presenter
        self.someData = someData
    }
    
    func doSomething() {
//        let publisher:ResponseHandler<[HomeModels.Photo]> = worker.doSomething()
//        publisher.sink { completion in
//            switch completion {
//            case .failure(let error):
//                print("Error: \(error)")
//            case .finished:
//                print("Finished")
//                break
//            }
//        } receiveValue: { [weak self] result in
//            guard let self = self else { return }
//            print("Result received: \(result.data.count)")
//            self.presenter.presentSomething();
//        }.store(in: &cancellables)
    }
    
}
