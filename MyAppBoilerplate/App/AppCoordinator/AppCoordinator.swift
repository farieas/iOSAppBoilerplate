//
//  AppCoordinator.swift
//  MyAppBoilerplate
//
//  Created by Farhan on 30/01/25.
//

import UIKit

protocol AppRouter {
    func start()
    func navigateToLogin()
    func navigateToHome()
    func navigateToCustomSplash()
    func navigateToScreenBasedOnPushNotification(_ data: [String: Any])
}

class AppCoordinator: AppRouter {
    
    let window: UIWindow!
    let userRepository: UserRepositoryProtocol!
    let pushRepository: PushNotificationProtocol!
    var navigationController: UINavigationController?
    
    init(window: UIWindow!, userRepository: UserRepositoryProtocol, pushRepository: PushNotificationProtocol) {
        self.window = window
        self.userRepository = userRepository
        self.pushRepository = pushRepository
        
    }
    
    //    func start() {
    //        if userRepository.isLoggedIn {
    //            navigateToHome()
    //        } else {
    //            navigateToLogin()
    //        }
    //        window.rootViewController = navigationController!
    //        window.makeKeyAndVisible()
    //    }
    
    func start() {
        navigateToCustomSplash()
        window.rootViewController = navigationController!
        window.makeKeyAndVisible()
        
    }
    
    
    func navigateToLogin() {
        // Navigate to Login
        
        
    }
    
    func navigateToHome() {
        // Navigate to Home
        // window.rootViewController = UINavigationController(rootViewController: loginVC)
    }
    
    func navigateToCustomSplash() {
        navigationController = UIVideoEditorController(rootViewController: SplashViewController())
    }
    
    func navigateToScreenBasedOnPushNotification(_ data: [String : Any]) {
        // Handle Push Notification
        pushRepository.handlePushNotification(data)
    }
    
    
}
