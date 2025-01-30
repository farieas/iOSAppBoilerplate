//
//  BaseViewController.swift
//  MyAppBoilerplate
//
//  Created by Farhan on 30/01/25.
//  Copyright © 2025 Farhan. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    init() {
        let className = String(describing: type(of: self))
        super.init(nibName: className, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    
}
