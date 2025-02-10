//
//  NetworkManager.swift
//  MyAppBoilerplate
//
//  Created by Farhan on 03/02/25.
//  Copyright © 2025 Farhan. All rights reserved.
//

import Foundation
import Combine

protocol NetworkProtocol {
    func executeRequest<T: Codable>(_ request: Requestable) -> ResponseHandler<T>
}

class NetworkManager {
    
    static let shared = NetworkManager(service: URLSessionNetworkService())
    private let service: NetworkProtocol
    
    private init(service: NetworkProtocol) {
        self.service = service
    }
    
    func executeRequest<T: Codable>(_ request: Requestable) -> ResponseHandler<T> {
        service.executeRequest(request)
        
    }
    
}

class URLSessionNetworkService: NetworkProtocol {
    func executeRequest<T: Codable>(_ request: Requestable) -> ResponseHandler<T> {
        do {
            let urlRequest = try request.urlRequest()
            return URLSession.shared.dataTaskPublisher(for: urlRequest)
                .map(\.data)
                .decode(type: BaseResponse<T>.self, decoder: JSONDecoder())
                .receive(on: DispatchQueue.main)
                .eraseToAnyPublisher()
        } catch {
            return Fail(error: error).eraseToAnyPublisher()
        }
    }
}
