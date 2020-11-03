//
//  PictureAdapterList.swift
//  MVVMStruture
//
//  Created by Dang Trung Hieu on 11/3/20.
//  Copyright © 2020 Dang Trung Hieu. All rights reserved.
//

import UIKit

class PictureListAdapter: NSObject {
    
    let delegate: PictureListProtocol
    
    // MARK: - Constructor
    
    init(delegate: PictureListProtocol) {
        self.delegate = delegate
    }
    
    
}

// MARK: - UICollectionViewDataSource Delegate

extension PictureListAdapter: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "PictureListTableViewCell", for: indexPath) as? PictureListTableViewCell else {
            fatalError("Cell not exists in storyboard")
        }
        cell.picture = delegate.getData( at: indexPath )
        return cell
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return delegate.retrieveNumberOfSections()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return delegate.retrieveNumberOfItems()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150.0
    }
    
    func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        
        delegate.itemSelected(at: indexPath)
                
        return nil
    }
    
}


