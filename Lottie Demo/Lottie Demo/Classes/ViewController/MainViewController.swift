//
//  MainViewController.swift
//  Lottie Demo
//
//  Created by Norbert Korosi on 30/01/2021.
//  Copyright © 2021 BrotherSoft. All rights reserved.
//

import UIKit
import Lottie

fileprivate let AnimationCellIdentifier = "AnimationCell"

class MainViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var dataSource: [AnimationModel] = []
    
    //MARK: - Lifecycle methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        setupDataSource()
    }
    
    //MARK: - UI & Action methods
    
    func setupUI() {
        tableView.tableFooterView = UIView()
    }
    
    func pushAnimationViewController(for animation: AnimationModel) {
        let vc = StoryboardUtils.makeAnimationViewController(title: animation.title, animationName: animation.name)
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

//MARK: - UITableViewDataSource methods

extension MainViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: AnimationCellIdentifier)!
        cell.textLabel?.text = dataSource[indexPath.row].title
        
        return cell
    }
}

//MARK: - UITableViewDelegate methods

extension MainViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        pushAnimationViewController(for: dataSource[indexPath.row])
    }
}

//MARK: - Private methods

private extension MainViewController {
    func setupDataSource() {
        dataSource = [AnimationModel(title: "Loading 1", name: "atomic-loading"),
                      AnimationModel(title: "Loading 2", name: "loading"),
                      AnimationModel(title: "Success 1", name: "success"),
                      AnimationModel(title: "Success 2", name: "success-2"),
                      AnimationModel(title: "Delivery 1", name: "delivery"),
                      AnimationModel(title: "Delivery 2", name: "delivery-2"),
                      AnimationModel(title: "Download 1", name: "download"),
                      AnimationModel(title: "Download 2", name: "download-2"),
                      AnimationModel(title: "Payment 1", name: "payment"),
                      AnimationModel(title: "Payment 2", name: "payment-2"),
                      AnimationModel(title: "Wear Mask", name: "wear-mask"),
                      AnimationModel(title: "Books", name: "books"),
                      AnimationModel(title: "Check", name: "check"),
                      AnimationModel(title: "Coin", name: "coin"),
                      AnimationModel(title: "Face Scanning", name: "face-scanning"),
                      AnimationModel(title: "Favourite", name: "favourite"),
                      AnimationModel(title: "Fireworks", name: "fireworks"),
                      AnimationModel(title: "Gift", name: "gift"),
                      AnimationModel(title: "Earth", name: "earth"),
                      AnimationModel(title: "Location", name: "location"),
                      AnimationModel(title: "Marketing", name: "marketing"),
                      AnimationModel(title: "Radar", name: "radar"),
                      AnimationModel(title: "School", name: "school"),
                      AnimationModel(title: "Shopping Cart", name: "shopping-cart"),
                      AnimationModel(title: "Toggle Switch", name: "toggle-switch"),
                      AnimationModel(title: "Wallet", name: "wallet")]
    }
}

