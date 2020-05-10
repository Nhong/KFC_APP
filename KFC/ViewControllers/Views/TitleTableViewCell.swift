//
//  TitleTableViewCell.swift
//  KFC
//
//  Created by Kittinun Chobtham on 10/5/2563 BE.
//  Copyright © 2563 Kittinun Chobtham. All rights reserved.
//

import UIKit

class TitleTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configure(title: String) {
        titleLabel.text = title
    }
    
}
