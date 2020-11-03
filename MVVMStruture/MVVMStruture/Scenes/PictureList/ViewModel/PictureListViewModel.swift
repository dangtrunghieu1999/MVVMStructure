//
//  PictureListViewModel.swift
//  MVVMStruture
//
//  Created by Dang Trung Hieu on 11/3/20.
//  Copyright © 2020 Dang Trung Hieu. All rights reserved.
//

import Foundation

class PictureListViewModel {
    
    // MARK: - Closures
    
    // Through clousures, our view model will execute some events
    // They will be set up by the view controller
    
    var reloadTableViewClosure: (()->())?
    var showAlertClosure: (()->())?
    var updateLoadingStatusClousure: (() -> ())?
    
    
   
    
    // MARK: - Properties
    
    let apiService: FakeAPIServiceProtocol
    
    var selectedPicture: Picture?
    
    // Collection will contain our fetched data
    
    private var pictures: [Picture] = [Picture]() {
        didSet {
            self.reloadTableViewClosure?()
        }
    }
   
    // A property containing the number of items
    
    var numberOfItems: Int {
        return pictures.count
    }
    
    var isLoading: Bool = false {
        didSet {
            self.updateLoadingStatusClousure?()
        }
    }
    
    // MARK: - Constructor
    
    init( apiService: FakeAPIServiceProtocol = FakeAPIService()) {
        self.apiService = apiService
    }
    
    // MARK: - Fetching Functions
    
    func fetchData() {
        self.isLoading = true
        apiService.getPopularPictures(complete:) {
            [weak self] (success, pictures, error) in
            if let error = error {
                print("Error: \(error.rawValue)")
            } else {
                self?.pictures = pictures
            }
            self?.isLoading = false
        }
    }
    
    
    // MARK: - Retrieve Data
    
    func getData( at indexPath: IndexPath) -> Picture {
        return pictures[indexPath.row]
    }
    
}
