//
//  Picture.swift
//  MVVMStruture
//
//  Created by Dang Trung Hieu on 11/3/20.
//  Copyright © 2020 Dang Trung Hieu. All rights reserved.
//

import Foundation

struct Pictures: Codable {
    let pictures: [Picture]
}

struct Picture: Codable {
    let id: Int
    let name: String
    let description: String?
    let created_at: Date
    let image_url: String
}
