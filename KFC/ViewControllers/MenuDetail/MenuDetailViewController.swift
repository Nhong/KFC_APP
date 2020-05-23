//
//  MenuDetailViewController.swift
//  KFC
//
//  Created by Kittinun Chobtham on 23/5/2563 BE.
//  Copyright © 2563 Kittinun Chobtham. All rights reserved.
//

import UIKit

class MenuDetailViewController: UIViewController {

    @IBOutlet weak var contentImageView: UIImageView!
    @IBOutlet weak var menuNameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var addToCartButton: UIButton!
    
    var optionalMenuItem: MenuItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
    
    private func setupView() {
        setupNavigationBar()
        setupAddToCartButton()
        setupContentImageView()
        setupMenuLabel()
        setupPriceLabel()
    }
    
    private func setupMenuLabel() {
        guard let name = optionalMenuItem?.name else { return }
        
        menuNameLabel.text = name
    }
    
    private func setupPriceLabel() {
        guard let price = optionalMenuItem?.price else { return }
        
        priceLabel.text = "\(price) บาท"
    }
    
    private func setupContentImageView() {
        guard let imageName = optionalMenuItem?.imageName else { return }
        
        contentImageView.image = UIImage(named: imageName)
    }
    
    private func setupAddToCartButton() {
        addToCartButton.layer.cornerRadius = 15.0
    }
    
    private func setupNavigationBar() {
        navigationItem.title = optionalMenuItem?.name
    }
    
    func setup(menuItem: MenuItem?) {
        self.optionalMenuItem = menuItem
    }
    
}
