//
//  RegisterTableViewController.swift
//  KFC
//
//  Created by Kittinun Chobtham on 3/5/2563 BE.
//  Copyright © 2563 Kittinun Chobtham. All rights reserved.
//

import UIKit

class RegisterTableViewController: UITableViewController {

    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var eyePasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
        dismiss(animated: true,
                completion: nil)
    }
    
    @IBAction func eyePasswordButtonTapped(_ sender: Any) {
        updateIsSecureTextEntry()
        updateEyePasswrodButton()
    }
    
    private func updateEyePasswrodButton() {
        eyePasswordButton.setImage(
            eyePasswordImage(
                isSecureTextEntry: passwordTextField.isSecureTextEntry),
            for: .normal)
    }
    
    private func eyePasswordImage(isSecureTextEntry: Bool) -> UIImage? {
        return isSecureTextEntry
            ? UIImage(named: "button_eye") : UIImage(named: "button_eye_close")
    }
    
    private func updateIsSecureTextEntry() {
        passwordTextField.isSecureTextEntry
            = !passwordTextField.isSecureTextEntry
    }
    
}
