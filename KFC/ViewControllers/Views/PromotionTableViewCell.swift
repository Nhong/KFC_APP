//
//  PromotionTableViewCell.swift
//  KFC
//
//  Created by Kittinun Chobtham on 10/5/2563 BE.
//  Copyright © 2563 Kittinun Chobtham. All rights reserved.
//

import UIKit

class PromotionTableViewCell: UITableViewCell {

    @IBOutlet weak var contentImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configure(imageName: String) {
        contentImageView.image = UIImage(named: imageName)
    }

}
