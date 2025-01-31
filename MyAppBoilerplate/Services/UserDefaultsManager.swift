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
    
    func save(_ value: Any,forkey: String) {
        userDefault.set(value, forKey: forkey)
        userDefault.synchronize()
    }
    
    func value(forkey: String) -> Any? {
      userDefault.value(forKey: forkey)
    }
    

    func data(forKey: String) -> Data? {
        userDefault.data(forKey: forKey)
    }
    
    func removeValue(forKey: String) {
        userDefault.removeObject(forKey: forKey)
        userDefault.synchronize()
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
