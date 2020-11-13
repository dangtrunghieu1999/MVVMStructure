//
//  LogInCoordinator.swift
//  MVVMStruture
//
//  Created by Dang Trung Hieu on 11/13/20.
//  Copyright © 2020 Dang Trung Hieu. All rights reserved.
//

import UIKit

class LogInCoordinator {

    private let navigationController: UINavigationController
    
    // 1
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        
        // 2
        let logInAction = DefaultLogin()
        
        // 3
        let viewModel = LoginViewModel(loginResult: logInAction)
        let viewController = LogInViewController(viewModel: viewModel)
        
        // 4
        navigationController.pushViewController(viewController, animated: true)
    }
}

class DefaultLogin: Login {
    
    func execute() -> LoginResult {
        return LoginResult.success
    }
    
    init() {
        
    }
    
    
}

