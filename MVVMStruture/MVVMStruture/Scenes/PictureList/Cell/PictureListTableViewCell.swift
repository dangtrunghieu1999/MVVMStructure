//
//  PictureListTableViewCell.swift
//  MVVMStruture
//
//  Created by Dang Trung Hieu on 11/3/20.
//  Copyright © 2020 Dang Trung Hieu. All rights reserved.
//

import UIKit
import Kingfisher

class PictureListTableViewCell: UITableViewCell {

    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    var picture : Picture? {
        didSet {
            nameLabel.text = picture?.name
            
            if let descr = picture?.description {
                descriptionLabel.text = descr
            }
            
            if let picture_url = URL( string: picture?.image_url ?? "" ) {
                productImage.kf.setImage(with: picture_url)
            }
            
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yyyy-MM-dd"
            dateLabel.text = dateFormatter.string(from: picture!.created_at)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
