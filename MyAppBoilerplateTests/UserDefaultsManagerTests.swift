//
//  UserDefaultsManagerTests.swift
//  MyAppBoilerplate
//
//  Created by Farhan on 31/01/25.
//  Copyright © 2025 Farhan. All rights reserved.
//

import Testing
@testable import MyAppBoilerplate

@Suite("UserDefaults Manager Test") struct UserDefaultsManagerTests {
    
    let userDefualts = UserDefaultsManager.shared
    
    @Test("Save And Retrive")
    func saveAndRetrive()  {
        userDefualts.save("value1", forkey: "key1")
        let value1 = userDefualts.value(forkey: "key1") as? String
        #expect(value1 == "value1", "Save And Retrive Passed")
    }
    
    @Test("Save And Retrive Data")
    func saveAndRetriveData() throws {
        let data = "Hello World".data(using: .utf8)
        let unwrappedData = try #require(data)
        userDefualts.save(unwrappedData, forkey: "key2")
        let value2 = userDefualts.data(forKey: "key2")
        #expect(value2 != nil, "Save And Retrive Data Passed")
    }
    
    @Test("Remove Value")
    func removeValue()  {
        userDefualts.save("value3", forkey: "key3")
        userDefualts.removeValue(forKey: "key3")
        let value3 = userDefualts.value(forkey: "key3")
        #expect(value3 == nil, "Remove Value Passed")
    }
    
    
}


