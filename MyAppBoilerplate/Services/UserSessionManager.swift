//
//  UserSessionManager.swift
//  MyAppBoilerplate
//
//  Created by Farhan on 30/01/25.
//  Copyright © 2025 Farhan. All rights reserved.
//

typealias AppUserType = AppUser

protocol UserSessionManagerProtocol {
    func saveUser(_ user: AppUserType)
    func loadUser() -> AppUserType?
    func clearUser()
    
}

class UserSessionManager: UserSessionManagerProtocol {
   
    
    static let shared = UserSessionManager(storage: UserDefaultsUserSessionStorage())
    
    private var storage: UserSessionStorable!
    
    private init(storage: UserSessionStorable) {
        self.storage = storage
    }
    
    func saveUser(_ user: AppUserType) {
        storage.saveUser(user)
    }
    
    func loadUser() -> AppUserType? {
        storage.loadUser()
    }
    
    func clearUser() {
        storage.clearUser()
    }
    
    
}
