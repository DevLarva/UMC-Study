//
//  ViewController.swift
//  Study-08
//
//  Created by 백대홍 on 2023/05/26.
//

import UIKit
import SAHistoryNavigationViewController
class ViewController: UIViewController {
    var moveLabel: UILabel!
    var moveView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        moveLabel = UILabel(frame: CGRect(x: 80, y: 85, width: 200, height: 100))
        moveLabel.backgroundColor = UIColor.clear
        moveLabel.text = NSLocalizedString("Animate!", comment: "")
        moveLabel.font = UIFont.systemFont(ofSize: 36)
        moveLabel.sizeToFit()
        view.addSubview(moveLabel)

        moveView = UIView(frame: CGRect(x: 40, y: 165, width: 200, height: 100))
        moveView.backgroundColor = UIColor.orange
        view.addSubview(moveView)
    }
}

