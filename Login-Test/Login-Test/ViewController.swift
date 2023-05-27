//
//  ViewController.swift
//  Login-Test
//
//  Created by 백대홍 on 2023/05/28.
//

import NaverThirdPartyLogin
import Alamofire
import UIKit

let naverLoginInstance = NaverThirdPartyLoginConnection.getSharedInstance()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        naverLoginInstance?.delegate = self
    }
