//
//  BaseResponse.swift
//  MyAppBoilerplate
//
//  Created by Farhan on 03/02/25.
//  Copyright © 2025 Farhan. All rights reserved.
//
import Foundation
import Combine

typealias ResponseHandler<T: Codable> = AnyPublisher<BaseResponse<T>, Error>

struct BaseResponse<T: Codable>: Codable {
    var data: T
    var message: String?
}
