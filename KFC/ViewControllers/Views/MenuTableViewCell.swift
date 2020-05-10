//
//  MenuTableViewCell.swift
//  KFC
//
//  Created by Kittinun Chobtham on 10/5/2563 BE.
//  Copyright © 2563 Kittinun Chobtham. All rights reserved.
//

import UIKit

class MenuTableViewCell: UITableViewCell {

    @IBOutlet weak var contentImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configure(imageName: String,
                   title: String) {
        contentImageView.image = UIImage(named: imageName)
        titleLabel.text = title
    }
    
}
