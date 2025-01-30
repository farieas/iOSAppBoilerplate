//
//  SplashTimer.swift
//  MyAppBoilerplate
//
//  Created by Farhan on 31/01/25.
//  Copyright © 2025 Farhan. All rights reserved.
//
import Foundation

class SplashTimer: SplashWorkerProtocol {
    
    func startTimer(handler: @escaping () -> ()) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+2) {
            handler()
        }
    }
    
    
}
