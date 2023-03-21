//
//  Coordinator.swift
//  YugiohCollectionView
//
//  Created by Rogerio Martins on 20/03/23.
//

import UIKit

class Coordinator: NSObject {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController?) {
        if navigationController == nil {
            self.navigationController = UINavigationController()
        }
        self.navigationController = navigationController ?? UINavigationController()
    }
    
    func startYugiohCards() {
        let viewController = YugiohCardsViewController()
        self.navigationController.pushViewController(viewController, animated: true)
    }
}
