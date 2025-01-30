//
//  PushNotificationRepository.swift
//  MyAppBoilerplate
//
//  Created by Farhan on 30/01/25.
//  Copyright © 2025 Farhan. All rights reserved.
//

enum PushNotificationType {
    
}

protocol PushNotificationProtocol {
    func handlePushNotification(_ userInfo: [AnyHashable: Any])
}

class PushNotificationRepositoryImpl: PushNotificationProtocol {
    
    func handlePushNotification(_ userInfo: [AnyHashable : Any]) {
        
    }
    
    
}
