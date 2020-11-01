//
//  APIService.swift
//  MVVMStruture
//
//  Created by Dang Trung Hieu on 11/1/20.
//  Copyright © 2020 Dang Trung Hieu. All rights reserved.
//

import UIKit

class APIService: NSObject {
    
    private let sourcesURL = URL(string: "http://dummy.restapiexample.com/api/v1/employees")!
    
    func apiToGetEmployeeData(completion : @escaping (Employees) -> ()){
        URLSession.shared.dataTask(with: sourcesURL) { (data, urlResponse, error) in
            if let data = data {
                
                let jsonDecoder = JSONDecoder()
                
                let empData = try! jsonDecoder.decode(Employees.self, from: data)
                    completion(empData)
            }
        }.resume()
    }
}
