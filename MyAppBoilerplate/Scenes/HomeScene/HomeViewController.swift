//
//  HomeViewController.swift
//  MyAppBoilerplate
//
//  Created by Farhan on 30/01/25.
//  Copyright © 2025 Farhan. All rights reserved.
//

import UIKit

protocol HomeDisplayLogic: AnyObject {
   func displaySomething()
}

class HomeViewController: BaseViewController, HomeDisplayLogic {
    
    var interator: HomeBusinessLogic?
    var router: (NSObjectProtocol & HomeRouterLogic & HomeDataPassing)?
   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        homeWireFrame()
    }
    
    func homeWireFrame() {
        let viewController = self
        let presenter = HomePresenter(viewController: viewController)
        let interator = HomeInteractor(presenter: presenter)
        let router = HomeRouter(viewController: viewController, dataStore: interator)
        viewController.interator = interator
        viewController.router = router
    }
    
    
    
    
    func displaySomething() {
      
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
