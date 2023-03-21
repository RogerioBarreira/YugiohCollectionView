//
//  YugiohCardsViewController.swift
//  YugiohCollectionView
//
//  Created by Rogerio Martins on 20/03/23.
//

import UIKit

class YugiohCardsViewController: UIViewController {
    
    lazy var viewYugiohCards: YugiohCardsView = {
        let view = YugiohCardsView()
        view.backgroundColor = .systemBackground
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.title = "Yugioh Cards"
    }
    
    override func loadView() {
        self.view = viewYugiohCards
    }
}
