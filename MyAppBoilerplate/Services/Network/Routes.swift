//
//  Routes.swift
//  MyAppBoilerplate
//
//  Created by Farhan on 03/02/25.
//  Copyright © 2025 Farhan. All rights reserved.
//

import Foundation

enum Method: String {
    case get = "GET"
    case post = "POST"
}

protocol Routable {
    var url: URL { get }
    var path : String { get }
    var method : Method { get }
}

enum Route: Routable {
    
    case home
    case detail
    
    var path: String {
        switch self {
        case .home:
            return "photos"
        case .detail:
            return ""
        }
    }
    
    var method: Method {
        switch self {
        case .home:
            return .get
        case .detail:
            return .get
        }
    }
    

    var url : URL {
        guard BaseConstants.baseURL != "--ENTER-THE-BASE-URL---" else {
            fatalError("OOPS!! Please provide base url")
        }
        return URL(string:BaseConstants.baseURL+path)!
    }
    
}
