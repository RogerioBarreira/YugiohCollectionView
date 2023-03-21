//
//  YugiohCardsViewController.swift
//  YugiohCollectionView
//
//  Created by Rogerio Martins on 20/03/23.
//

import UIKit

class YugiohCardsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.title = "Yugioh Cards"
        self.view.backgroundColor = .systemBackground
    }
}
