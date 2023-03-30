//
//  ViewController.swift
//  Study-01
//
//  Created by 백대홍 on 2023/03/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button1 = UIButton(type: .system)
        button1.translatesAutoresizingMaskIntoConstraints = false
        button1.setTitle("Button 1", for: .normal)
        view.addSubview(button1)
        
        let button2 = UIButton(type: .system)
        button2.translatesAutoresizingMaskIntoConstraints = false
        button2.setTitle("Button 2", for: .normal)
        view.addSubview(button2)
        
        NSLayoutConstraint.activate([
            button1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            button1.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            button1.widthAnchor.constraint(equalToConstant: 100),
            button1.heightAnchor.constraint(equalToConstant: 50),
            
            button2.leadingAnchor.constraint(equalTo: button1.trailingAnchor, constant: 50),
            button2.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            button2.widthAnchor.constraint(equalToConstant: 100),
            button2.heightAnchor.constraint(equalToConstant: 50),
        ])
    }


}

