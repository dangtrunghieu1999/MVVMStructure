//
//  PictureListProtocol.swift
//  MVVMStruture
//
//  Created by Dang Trung Hieu on 11/3/20.
//  Copyright © 2020 Dang Trung Hieu. All rights reserved.
//

import Foundation

protocol PictureListProtocol {
    
    func getData(at: IndexPath)->Picture
    func itemSelected(at: IndexPath)
    func retrieveNumberOfSections()->Int
    func retrieveNumberOfItems()->Int
    
}

