//
//  Pictures.swift
//  MVVMStruture
//
//  Created by Dang Trung Hieu on 3/7/21.
//  Copyright © 2021 Dang Trung Hieu. All rights reserved.
//

import UIKit

class Pictures: Codable {
    let pictures: [Picture]
}

struct Picture: Codable {
    let id              : Int
    let name            : String
    let description     : String?
    let create_at       : Date
    let image_url       : String
}


