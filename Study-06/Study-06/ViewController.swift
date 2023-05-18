//
//  ViewController.swift
//  Study-06
//
//  Created by 백대홍 on 2023/05/18.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nametextField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var emailtextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        retriveDetails()
    }

    @IBAction func saveBtn(_ sender: Any) {
        UserDefaults.standard.set(nametextField.text, forKey: "Name")
        UserDefaults.standard.set(emailtextField.text, forKey: "Email")
        UserDefaults.standard.set(passwordField.text, forKey: "Password")
    }
    
    func retriveDetails() {
        let name = UserDefaults.standard.string(forKey: "Name")
        let email = UserDefaults.standard.string(forKey: "Email")
        let password = UserDefaults.standard.string(forKey: "Password")
        
        print("당신의 이름은 \(name!), 당신의 이메일은 \(email!), 당신의 비밀번호는 \(password!)")
    }
}

