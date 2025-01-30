//
//  Conversions.swift
//  MyAppBoilerplate
//
//  Created by Farhan on 30/01/25.
//  Copyright © 2025 Farhan. All rights reserved.
//

import Foundation

extension Data {
    
    /// Extends the Data type to provide a method for decoding JSON data into a Codable type.
    /// - Throws: Throws an error if the encoding process fails.
    /// - Returns: The decoded object of type T
    func decode<T: Codable>() throws -> T {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: self)
    }
    
}

extension Encodable {
    
    /// Extends the Encodable type to provide a method for encoding an object to JSON data.
    /// - throws: Throws an error if the encoding process fails.
    /// - Returns: The encoded JSON data or null if encoding fails.
    func encodeToData() throws -> Data? {
        let encoder = JSONEncoder()
        return try encoder.encode(self)
    }
    
}
