//
//  PictureListProtocol.swift
//  MVVMStruture
//
//  Created by Dang Trung Hieu on 3/7/21.
//  Copyright © 2021 Dang Trung Hieu. All rights reserved.
//

import Foundation

protocol PictureListProtocol {
    func getData(at: IndexPath) -> Picture
    func itemSelected(at: IndexPath)
    func retrieveNumberOfSections() -> Int
    func retrieveNumberOfItems() -> Int
}
