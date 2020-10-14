//
//  HomeViewController.swift
//  SmartHome
//
//  Created by Joao Batista on 13/10/20.
//  Copyright © 2020 Joao Batista. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var devicesCollection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigation()
        // Do any additional setup after loading the view.
    }
    private func setupNavigation() {
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor(named: "title") ?? UIColor.systemTeal]

    }
}
