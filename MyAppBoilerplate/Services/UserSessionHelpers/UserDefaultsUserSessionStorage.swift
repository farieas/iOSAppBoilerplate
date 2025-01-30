//
//  UserDefaultsUserSessionStorage.swift
//  MyAppBoilerplate
//
//  Created by Farhan on 30/01/25.
//  Copyright © 2025 Farhan. All rights reserved.
//

import Foundation

/// The UserDefaultsUserSessionStorage class provides a concrete implementation of the UserSessionStorable protocol, utilizing UserDefaultsManager for persistent storage of user session data. It enables saving, loading, and clearing user session data in a type-safe manner using Codable.
class UserDefaultsUserSessionStorage: UserSessionStorable {
    
    
    /// Manages interactions with UserDefaults for storing and retrieving data.
    private let userDefaults = UserDefaultsManager.shared
    
    ///  Encodes and saves a user object to UserDefaults.
    /// - Parameter user: A generic type conforming to Codable, representing the user data to be stored.
    func saveUser<T: Codable>(_ user: T) {
        if let encoded = try? user.encodeToData() {
            userDefaults.save(encoded, for: .userData)
        }
    }
    
    /// Loads and decodes the stored user object from UserDefaults
    /// - Returns: Returns an optional instance of type T, or nil if no data is found or decoding fails.
    func loadUser<T: Codable>() -> T? {
        guard let savedData = userDefaults.data(for: .userData) else { return nil }
        return try? savedData.decode()
    }
    
    /// Removes the stored user session data from UserDefaults.
    func clearUser() {
        userDefaults.removeValue(for: .userData)
    }
    
}
