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
    
    func startYugiohDetailCards(detail: Datum?) {
        let viewController = YugiohDetailCardsViewController()
        viewController.viewModelYugiohDetail.detailCards(detail: detail)
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
    func startYugiohCardsSets(detail: Datum?) {
        let viewController = YugiohCardSetsViewController()
        viewController.viewModelYugiohCardSets.getResultCard(detail: detail)
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
    func startYugiohDetailCardsSets(detail: CardSet?) {
        let viewController = YugiohCardSetDetailViewController()
        viewController.viewModelDetailCardSets.getResultCard(detail: detail)
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
    func popViewController() {
        let viewController = YugiohDetailCardsViewController()
        self.navigationController.popToRootViewController(animated: true)
    }
}
