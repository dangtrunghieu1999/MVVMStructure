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
        setupUI()
    }
    
    func setupUI() {
        self.navigationItem.title = "Popular"
    }
    
    
    
    
    
    
    

}
