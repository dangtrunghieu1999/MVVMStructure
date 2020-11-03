//
//  PictureListViewController.swift
//  MVVMStruture
//
//  Created by Dang Trung Hieu on 11/3/20.
//  Copyright © 2020 Dang Trung Hieu. All rights reserved.
//

import UIKit

class PictureListViewController: UIViewController {
    
    // MARK: - UI Elements
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    // MARK: - Variables
    
    var adapter: PictureListAdapter!
    
    fileprivate lazy var viewModel: PictureListViewModel = {
        let viewModel = PictureListViewModel()
        return viewModel
    }()
    
    // MARK: - View LifeCycles
    
    override func viewDidLoad() {
        super.viewDidLoad()
        adapter = PictureListAdapter(delegate: self)
        tableView.delegate = adapter
        tableView.dataSource = adapter
        
        setupUI()
        initViewModel()
    }
    
    func setupUI() {
        self.navigationItem.title = "Popular"
    }
    
    func initViewModel() {
        viewModel.reloadTableViewClosure =  { [weak self] () in
            DispatchQueue.main.async {
                self?.tableView.reloadData()
            }
        }
        
        viewModel.updateLoadingStatusClousure = { [weak self] () in
            DispatchQueue.main.async {
                let isLoading = self?.viewModel.isLoading ?? false
                if isLoading {
                    self?.activityIndicator.startAnimating()
                    UIView.animate(withDuration: 0.2, animations: {
                        self?.tableView.alpha = 0.0
                    })
                } else {
                    self?.activityIndicator.stopAnimating()
                    UIView.animate(withDuration: 0.2, animations: {
                        self?.tableView.alpha = 1.0
                    })
                }
            }
        }
        
        viewModel.fetchData()
    }
    
    
}

extension PictureListViewController: PictureListProtocol {
    func getData(at: IndexPath) -> Picture {
        return self.viewModel.getData(at: at)
    }
    
    func itemSelected(at: IndexPath) {
        self.viewModel.selectedPicture = self.viewModel.getData(at: at)
        performSegue(withIdentifier: "goToDetails", sender: nil)
    }
    
    func retrieveNumberOfSections() -> Int {
        return 1
    }
    
    func retrieveNumberOfItems() -> Int {
        return self.viewModel.numberOfItems
    }
    
    
}
