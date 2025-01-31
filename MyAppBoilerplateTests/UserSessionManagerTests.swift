//
//  UserSessionManagerTests.swift
//  MyAppBoilerplateTests
//
//  Created by ASPLAPMAC24 on 31/01/25.
//  Copyright © 2025 Farhan. All rights reserved.
//

import Testing
@testable import MyAppBoilerplate

@Suite("User Session Manager",.serialized)
struct UserSessionManagerTests {
    
    let userSessionManager = UserSessionManager.shared
    
    let appUser: AppUserType = AppUserType(id: 123, name: "test user")
    
    @Test("Save User Object")
    func saveAndRetriveUser() async throws {
        userSessionManager.saveUser(appUser)
        #expect(userSessionManager.loadUser()?.id == appUser.id)
    }

    @Test("Clear User Session")
    func clearUserSession() async throws {
        userSessionManager.clearUser()
        let user = userSessionManager.loadUser()
        #expect(user == nil)
    }

}
