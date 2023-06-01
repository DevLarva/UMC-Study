//
//  ViewController.swift
//  MultiLogin
//
//  Created by 백대홍 on 2023/06/01.
//
import UIKit
import GoogleSignIn

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let signInButton = UIButton(type: .system)
        signInButton.setTitle("Google Sign In", for: .normal)
        signInButton.addTarget(self, action: #selector(signIn), for: .touchUpInside)
        signInButton.frame = CGRect(x: 100, y: 100, width: 150, height: 40)
        view.addSubview(signInButton)
        
        // 구글 로그인 설정
        let config = GIDConfiguration(clientID: "331496438477-76jav3irgumvua6qs7vlithpveb6ip7v.apps.googleusercontent.com")
        GIDSignIn.sharedInstance.configure(with: config)
        GIDSignIn.sharedInstance.presentingViewController = self
        GIDSignIn.sharedInstance.restorePreviousSignIn()
    }
    
    @objc func signIn(sender: Any) {
        GIDSignIn.sharedInstance.signIn { signInResult, error in
            guard error == nil else { return }

            // If sign in succeeded, display the app's main content View.
        }
    }
}
