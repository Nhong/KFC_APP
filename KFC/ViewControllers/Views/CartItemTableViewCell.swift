//
//  CartItemTableViewCell.swift
//  KFC
//
//  Created by Kittinun Chobtham on 31/5/2563 BE.
//  Copyright © 2563 Kittinun Chobtham. All rights reserved.
//

import UIKit

final class CartItemTableViewCell: UITableViewCell {

    @IBOutlet weak var contentImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var quantityTextField: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupView()
    }
    
    private func setupView() {
        setupTextField()
    }
    
    private func setupTextField() {
        setupTextFieldDelegate()
    }
    
    private func setupTextFieldDelegate() {
        quantityTextField.delegate = self
    }
    
    func configure(image: UIImage?,
                   title: String?,
                   price: String?,
                   quantity: String,
                   isEnableMinusButton: Bool,
                   isEnableAddButton: Bool) {
        updateContentImageView(image: image)
        updateTitleLabel(title: title)
        updatePriceTitleLabel(title: title)
        updateQuantityTextField(quantity: quantity)
        updateMinusButton(isEnableMinusButton: isEnableMinusButton)
    }
    
    private func updateContentImageView(image: UIImage?) {
        contentImageView.image = image
    }
    
    private func updateTitleLabel(title: String?) {
        titleLabel.text = title
    }
    
    private func updatePriceTitleLabel(title: String?) {
        priceLabel.text = title
    }
    
    private func updateQuantityTextField(quantity: String?) {
        quantityTextField.text = quantity
    }
    
    private func updateMinusButton(isEnableMinusButton: Bool) {
        minusButton.isEnabled = isEnableMinusButton
    }
    
    private func updateAddButton(isEnableAddButton: Bool) {
        addButton.isEnabled = isEnableAddButton
    }
    
}

extension CartItemTableViewCell: UITextFieldDelegate {
    
    func textField(_ textField: UITextField,
                   shouldChangeCharactersIn range: NSRange,
                   replacementString string: String) -> Bool {
        return true
    }
    
}
