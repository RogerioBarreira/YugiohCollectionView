//
//  YugiohCardsViewModel.swift
//  YugiohCollectionView
//
//  Created by Rogerio Martins on 21/03/23.
//

import Foundation

class YugiohCardsViewModel: NSObject {
    
    private let request = Request()
    private var myCards: YugiohCards?
    
    func requestYugiohCards(completion: @escaping(Bool)-> Void) {
        request.requestYugiohCards { [weak self] myCard, success in
            guard let self = self else { return }
            if success {
                self.myCards = myCard
                completion(true)
            } else {
                completion(false)
            }
        }
    }
}
