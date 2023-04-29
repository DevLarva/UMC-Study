//
//  ViewController.swift
//  Study- 05
//
//  Created by 백대홍 on 2023/04/29.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let button = UIButton(type: .system)
        button.setTitle("눌러주세요", for: .normal)
        button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        view.addSubview(button)
        
    
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        // Handle button tap event
    }
}

