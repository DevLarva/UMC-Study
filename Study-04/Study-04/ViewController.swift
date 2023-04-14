//
//  ViewController.swift
//  Study-04
//
//  Created by 백대홍 on 2023/04/13.
//

import UIKit

// MARK: - ScrollView
//class ViewController: UIViewController {
//    let scrollView: UIScrollView! = UIScrollView()
//    let stackView: UIStackView! = UIStackView()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.addSubview(scrollView)
//        view.backgroundColor = .white
//
//        scrollView.translatesAutoresizingMaskIntoConstraints = false
//        scrollView.backgroundColor = .white
//
//        NSLayoutConstraint.activate([
//            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//            // safeLayoutGuide로 잡으면 safelayout 바깥 쪽은 스크롤 X
//            scrollView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
//            scrollView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor)
//        ])
//
//        scrollView.addSubview(stackView)
//
//        stackView.spacing = 0
//        stackView.translatesAutoresizingMaskIntoConstraints = false
//
//        NSLayoutConstraint.activate([
//            stackView.leadingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.leadingAnchor),
//            stackView.trailingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.trailingAnchor),
//            stackView.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor),
//            stackView.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor),
//        ])
//
//        setVerticalStackView()
//    }
//
//    private func setVerticalStackView() {
//        stackView.axis = .vertical
//        stackView.widthAnchor.constraint(equalTo: scrollView.frameLayoutGuide.widthAnchor).isActive = true
//        fillStackView("vertical")
//    }
//
//    private func fillStackView(_ axis: String) {
//        let colorArray = [UIColor.blue, .red, .yellow, .purple, .green, .black, .orange, .gray]
//        for color in colorArray {
//            let elementView = UIView()
//            elementView.backgroundColor = color
//            elementView.translatesAutoresizingMaskIntoConstraints = false
//            if axis == "horizontal" {
//                elementView.widthAnchor.constraint(equalToConstant: 200).isActive = true
//            } else {
//                elementView.heightAnchor.constraint(equalToConstant: 300).isActive = true
//            }
//            stackView.addArrangedSubview(elementView)
//        }
//    }
//}
//
// MARK: - Table View
//import UIKit
//
//class ViewController: UIViewController {
//    lazy var tableView = UITableView(frame: .zero, style: .insetGrouped)
//
//    let data = [["Test 1-1","Test 1-2","Test 1-3","Test 1-4"],["Test 2-1","Test 2-2","Test 2-3"],["Test 3-1","Test 3-2"]]
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        self.view.backgroundColor = .white
//        self.view.addSubview(self.tableView)
//        self.tableView.dataSource = self
//
//        self.tableView.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            self.tableView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
//            self.tableView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
//            self.tableView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
//            self.tableView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor)
//        ])
//    }
//
//}
//extension ViewController: UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return data[section].count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = UITableViewCell(style: .default, reuseIdentifier: .none)
//        cell.textLabel?.text = data[indexPath.section][indexPath.row]
//        return cell
//    }
//}

// MARK: - Collectin View
//import UIKit
//class ViewController: UIViewController,
//                      UICollectionViewDataSource,
//                      UICollectionViewDelegate {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//    }
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 10
//    }
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as?
//                UICollectionViewCell else {
//            return UICollectionViewCell()
//        }
//
//        return cell
//    }
//
//
//
//}
import UIKit

struct Item {
    var name: String
    var price: Int
}

class MyTableViewController: UITableViewController {
    var items: [Item] = [
        Item(name: "Item A", price: 100),
        Item(name: "Item B", price: 200),
        Item(name: "Item C", price: 300)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 추가적인 초기화 및 설정
    }
    
    // UITableViewDataSource 프로토콜 구현
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let item = items[indexPath.row]
        cell.textLabel?.text = item.name
        cell.detailTextLabel?.text = "$\(item.price)"
        return cell
    }
}
