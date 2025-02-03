//
//  HomeAPIStore.swift
//  MyAppBoilerplate
//
//  Created by Farhan on 01/02/25.
//  Copyright © 2025 Farhan. All rights reserved.
//
import Combine


class HomeAPIStore: HomeWorkerProtocol {
    
    let apiService = NetworkManager.shared
    private var cancellables = Set<AnyCancellable>()
    
    func doSomething<T: Codable>() -> ResponseHandler<T> {
        let request: RequestImpl = .init(route: Route.home, headers: nil)
        return apiService.executeRequest(request)
       

    }
    
}
