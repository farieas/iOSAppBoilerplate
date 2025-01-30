//
//  AppUserRepository.swift
//  MyAppBoilerplate
//
//  Created by Farhan on 30/01/25.
//  Copyright © 2025 Farhan. All rights reserved.
//

protocol UserRepositoryProtocol {
    var isLoggedIn: Bool { get }
}

class AppUserRepositoryImpl: UserRepositoryProtocol {
    
    let userSession = UserSessionManager.shared
    
    var isLoggedIn: Bool {
        userSession.loadUser() != nil
    }
    
    
}
