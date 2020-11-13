//
//  LogInViewController.swift
//  MVVMStruture
//
//  Created by Dang Trung Hieu on 11/13/20.
//  Copyright © 2020 Dang Trung Hieu. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {
    let loginViewModel: LoginViewModel
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    init(viewModel: LoginViewModel) {
        self.loginViewModel = viewModel
        super.init(nibName: "VC", bundle: Bundle.main)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
