//
//  Request.swift
//  MyAppBoilerplate
//
//  Created by Farhan on 03/02/25.
//  Copyright © 2025 Farhan. All rights reserved.
//

import Foundation

protocol Requestable {
    var route: Routable { get }
    var headers: [String: String]? { get }
    var body: Data? { get }
    func urlRequest() throws -> URLRequest
}

struct RequestImpl: Requestable {
    
    var route: Routable
    
    var headers: [String : String]?
    
    var body: Data?
    
    init(route: Routable, headers: [String : String]?, body: Data? = nil) {
        self.route = route
        self.headers = headers
        self.body = body
    }
    
    func urlRequest() throws -> URLRequest {
        let url = route.url
        var request = URLRequest(url: url)
        request.httpMethod = route.method.rawValue
        
        if let headers = headers {
            for (key, value) in headers {
                request.addValue(value, forHTTPHeaderField: key)
            }
        }
        return request
    }
    
}
