//
//  ViewController.swift
//  Study-07
//
//  Created by 백대홍 on 2023/05/25.
//
//
//import UIKit
//
//class ViewController: UIViewController {
//    let myView = UIImageView()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//    }
//
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//        myView.image = UIImage(named: "heart")
//        myView.center = view.center
//        view.addSubview(myView)
//
//        let button = UIButton(frame: CGRect(x: (view.frame.size.width-200)/2, y: view.frame.size.height - 220, width: 200, height: 70))
//        button.backgroundColor = .black
//        button.setTitleColor(.white, for: .normal)
//        button.setTitle("시작", for: .normal)
//        button.addTarget(self, action: #selector(animate), for: .touchUpInside)
//        view.addSubview(button)
//
////        view.layoutIfNeeded() // Force immediate layout update                    layoutIfNeeded 추가
//    }
//
//    @objc func animate() {
//        UIView.animate(withDuration: 0.4, animations: {
//            self.myView.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
//            self.myView.center = self.view.center
//        }, completion: { done in
//            if done {
//                self.shrink()
//            }
//        })
//    }
//
//    func shrink() {
//        UIView.animate(withDuration: 1, animations: {
//            self.myView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
//            self.myView.center = self.view.center
//        }, completion: { done in
//            self.animate()
//        })
//    }
//}

import UIKit

class ViewController: UIViewController {
    let myView = UIImageView()
    let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap(_:)))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addGestureRecognizer(tapGesture)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        myView.image = UIImage(named: "heart")
        myView.center = view.center
        view.addSubview(myView)
        
        let button = UIButton(frame: CGRect(x: (view.frame.size.width-200)/2, y: view.frame.size.height - 220, width: 200, height: 70))
        button.backgroundColor = .black
        button.setTitleColor(.white, for: .normal)
        button.setTitle("시작", for: .normal)
        button.addTarget(self, action: #selector(animate), for: .touchUpInside)
        view.addSubview(button)
        
        view.layoutIfNeeded() // Force immediate layout update
    }
    
    @objc func animate() {
        UIView.animate(withDuration: 0.4, animations: {
            self.myView.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
            self.myView.center = self.view.center
        }, completion: { done in
            if done {
                self.shrink()
            }
        })
    }
    
    func shrink() {
        UIView.animate(withDuration: 1, animations: {
            self.myView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
            self.myView.center = self.view.center
        }, completion: { done in
            self.animate()
        })
    }
    
    @objc func handleTap(_ gesture: UITapGestureRecognizer) {
        if gesture.state == .ended {
            animate()
        }
    }
}
