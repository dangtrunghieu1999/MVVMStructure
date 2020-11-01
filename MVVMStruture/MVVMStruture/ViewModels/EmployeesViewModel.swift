//
//  EmployeesViewModel.swift
//  MVVMStruture
//
//  Created by Dang Trung Hieu on 11/1/20.
//  Copyright © 2020 Dang Trung Hieu. All rights reserved.
//

import Foundation


class EmployeesViewModel: NSObject {
    
    fileprivate lazy var apiService: APIService = {
        let apiService = APIService()
        return apiService
    }()
    
    private (set) var empData: Employees! {
        didSet {
            self.bindEmployeeViewModelToController()
        }
    }
    
    var bindEmployeeViewModelToController : (() -> ()) = {}

    override init() {
        super.init()
        self.callFuncionToGetEmpData()
    }
    
    func callFuncionToGetEmpData() {
        self.apiService.apiToGetEmployeeData { (empData) in
            self.empData = empData
        }
    }
}
