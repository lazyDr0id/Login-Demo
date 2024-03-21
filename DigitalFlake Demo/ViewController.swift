//
//  ViewController.swift
//  DigitalFlake Demo
//
//  Created by Prajyot Patle on 21/03/24.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var txtFieldPhoneNumber: UITextField!
    @IBOutlet weak var txtFieldPassword: UITextField!
    @IBOutlet weak var buttonLogin: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    

    @IBAction func textChanged(_ sender: UITextField) {
        
        //print(sender.text!)
        
        
        
        if txtFieldPassword.text!.isValidPassword() && txtFieldPhoneNumber.text!.isPhoneNumber() {
            buttonLogin.isEnabled = false
        } else {
            buttonLogin.isEnabled = true
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
            return false
        }
        
        // check if contains uppercase leter
        guard self.contains(where: { char in
            char.isUppercase
        }) else {
            return false
        }
        
        // check if contains uppercase leter
        guard self.contains(where: { char in
            char.isSymbol
        }) else {
            return false
        }
        
        return true
    }
}
