//
//  ViewController.swift
//  AlamofireTest
//
//  Created by 백대홍 on 2023/05/30.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        fetchMovies()
    }

    func fetchMovies() {
        AF.request("https://jsonplaceholder.typicode.com/todos/1", method: .get).responseJSON { response in
            switch response.result {
            case .success(let value):
                print("JSON: \(value)")
            case .failure(let error):
                print("Error: \(error)")
            }
        }
    }
}
