//
//  Enums.swift
//  MVVMStruture
//
//  Created by Dang Trung Hieu on 11/3/20.
//  Copyright © 2020 Dang Trung Hieu. All rights reserved.
//

import Foundation

enum FakeAPIError: String, Error {
    case serverUnavailable = "Server is unavailable"
    case permissionDenied = "Permission denied"
}
