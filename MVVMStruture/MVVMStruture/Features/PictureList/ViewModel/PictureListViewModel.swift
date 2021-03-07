//
//  PictureListViewModel.swift
//  MVVMStruture
//
//  Created by Dang Trung Hieu on 3/7/21.
//  Copyright © 2021 Dang Trung Hieu. All rights reserved.
//

import Foundation

class PictureListViewModel {
    
    //  MARK: - Closures
    
    var reloadTableViewClosures: (() -> ())?
    var showAlertClosure: (() -> ())?
    var updateLoadingStatusClosure: (() -> ())?
    
    // MARK: - Properties
    
    let apiService          : FakeAPIServiceProtocol?
//    let selectedPicture     : Picture?
    
    var pictures: [Picture] = [Picture] () {
        didSet {
            self.reloadTableViewClosures?()
        }
    }
    
    var numberOfItems: Int {
        return pictures.count
    }
    
    var isLoading: Bool = false {
        didSet {
            self.updateLoadingStatusClosure?()
        }
    }
     
    // MARK: - Constructor
    
    init(apiService: FakeAPIServiceProtocol? = FakeAPIService()) {
        self.apiService = apiService
    }
    
    
    
}
