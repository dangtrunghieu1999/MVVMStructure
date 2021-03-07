//
//  PictureListAdapter.swift
//  MVVMStruture
//
//  Created by Dang Trung Hieu on 3/7/21.
//  Copyright © 2021 Dang Trung Hieu. All rights reserved.
//

import UIKit

class PictureListAdapter: NSObject {
    let delegate: PictureListProtocol
    
    init(delegate: PictureListProtocol) {
        self.delegate = delegate
    }

}

extension PictureListAdapter: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return delegate.retrieveNumberOfSections()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return delegate.retrieveNumberOfItems()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "PictureListTableViewCell", for: indexPath) as? PictureListTableViewCell else {
            fatalError("Cell not exists in storyboard")
        }
        
//        cell.picture = delegate.getData( at: indexPath )
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150.0
    }
    
    func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        
        delegate.itemSelected(at: indexPath)
                
        return nil
    }

}


