//
//  ViewController.swift
//  DigitalFlake Demo
//
//  Created by Prajyot Patle on 21/03/24.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var txtFieldPhoneNumber: UITextField!
    @IBOutlet weak var txtFieldPassword: UITextField!
    @IBOutlet weak var buttonLogin: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        txtFieldPhoneNumber.clear()
        txtFieldPassword.clear()
        buttonLogin.isEnabled = false
    }
    
    

    @IBAction func textChanged(_ sender: UITextField) {
        
        //print(sender.text!)
        
        
        
        if txtFieldPassword.text!.isValidPassword() && txtFieldPhoneNumber.text!.isPhoneNumber() {
            buttonLogin.isEnabled = true
        } else {
            buttonLogin.isEnabled = false
        }
    }
    
    
    
}

extension String{

    
    // Basic validation for phone number
    // Should be 10 digit long
    func isPhoneNumber() -> Bool {
        
        guard self.count == 10 else {
            return false
        }
        
        guard Int(self) != nil else { return false }
    
        return true
    }
    
    func isValidPassword() -> Bool {
        // can use regex, but used basic bruteforce method
        
        // check if length at least 8
        guard self.count >= 8 else {
            return false
        }
        
        // check if containsa digit
        guard self.contains(where: { char in
            char.isNumber
        }) else {
            print("no digit")
            return false
        }
        
        // check if contains uppercase letter
        guard self.contains(where: { char in
            char.isUppercase
        }) else {
            print("no uppercase")
            return false
        }
        
        // Similarly you can add more check below
        
        return true
    }
}


extension UITextField {
    func clear() {
        self.text = ""
    }
}
