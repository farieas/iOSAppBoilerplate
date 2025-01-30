//
//  UserSessionStorable.swift
//  MyAppBoilerplate
//
//  Created by Farhan on 30/01/25.
//  Copyright © 2025 Farhan. All rights reserved.
//

import Foundation

/// The UserSessionStorable protocol defines an interface for managing user session data in a type-safe manner using Codable. It provides methods for saving, loading, and clearing user data.
protocol UserSessionStorable {
    
    /// Saves the given user data persistently.
    /// - Parameter user: A generic type conforming to Codable, representing the user data to be stored.
    func saveUser<T: Codable>(_ user: T)
    
    /// Loads and returns the stored user data.
    /// - Returns: Returns an optional instance of type T (a Codable type), or nil if no user data is found.
    func loadUser<T: Codable>() -> T?
    
    /// Clears the stored user session data.
    func clearUser()
}
