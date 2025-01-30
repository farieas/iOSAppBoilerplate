//
//  SplashViewController.swift
//  MyAppBoilerplate
//
//  Created by Farhan on 30/01/25.
//  Copyright © 2025 Farhan. All rights reserved.
//

import UIKit

protocol SplashDisplayLogic: AnyObject {
    func onViewReady()
}

class SplashViewController: BaseViewController, SplashDisplayLogic {
    
    var interactor: SplashBusinessLogic!
    var router: (NSObjectProtocol & SplashRouterLogic & SplashDataPassing)!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        homeWireframe()
        interactor.onViewReady()
    }
    
    private func homeWireframe() {
        let viewController = self
        let presenter = SplashPresenter(viewController: viewController)
        let interactor = SplashInteractor(presenter: presenter)
        let router = SplashRouter(viewController: viewController, dataStore: interactor)
        viewController.router = router
        viewController.interactor = interactor
    }

    func onViewReady() {
        print("onViewReady")
       // router.navigateToHome()
    }
}
