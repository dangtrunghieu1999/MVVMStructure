//
//  LogInViewModel.swift
//  MVVMStruture
//
//  Created by Dang Trung Hieu on 11/13/20.
//  Copyright © 2020 Dang Trung Hieu. All rights reserved.
//

import UIKit

class LoginViewModel {
    
    let loginResult: Login
    
    init(loginResult: Login) {
        self.loginResult = loginResult
    }
    
    func loginButtonTouch() {
        switch loginResult.execute() {
        case .success:
            print("success")
        case .error:
            print("error")
        }
    }
    
}

protocol Login {
    func execute() -> LoginResult
}

enum LoginResult {
    case success
    case error
}
