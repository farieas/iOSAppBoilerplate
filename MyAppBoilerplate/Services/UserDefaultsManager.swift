//
//  UserDefaultsManager.swift
//  MyAppBoilerplate
//
//  Created by Farhan on 30/01/25.
//  Copyright © 2025 Farhan. All rights reserved.
//

import Foundation

enum UserDefaultsKey: String {
    case userData
}

class UserDefaultsManager {
    
    static let shared = UserDefaultsManager()
    
    private let userDefault = UserDefaults.standard
    
    private init() {}
    
    func save(_ value: Any,for key: UserDefaultsKey) {
        userDefault.set(value, forKey: key.rawValue)
    }
    
    func value(for key: UserDefaultsKey) -> Any? {
        userDefault.value(forKey: key.rawValue)
    }
    
    func data(for key: UserDefaultsKey) -> Data? {
        userDefault.data(forKey: key.rawValue)
    }
    
    func removeValue(for key: UserDefaultsKey) {
        userDefault.removeObject(forKey: key.rawValue)
    }
    
    func clearAllDefaultsValue() {
        if let bundleID = Bundle.main.bundleIdentifier {
            userDefault.removePersistentDomain(forName: bundleID)
            debugPrint("All UserDefaults cleared.")
        } else {
            debugPrint("Failed to get bundle identifier.")
        }
    }
    
}
