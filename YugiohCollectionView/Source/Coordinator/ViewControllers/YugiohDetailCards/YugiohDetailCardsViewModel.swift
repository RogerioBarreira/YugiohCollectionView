//
//  YugiohDetailCardsViewModel.swift
//  YugiohCollectionView
//
//  Created by Rogerio Martins on 21/03/23.
//

import Foundation

class YugiohDetailCardsViewModel: NSObject {
    
    private var detailCards: Datum?
    
    var imageUrl: URL? {
        return URL(string: detailCards?.cardImages?.first?.imageURL ?? "")
    }
    
    var nameCard: String {
        return detailCards?.name ?? ""
    }
    
    var descCard: String {
        return detailCards?.desc ?? ""
    }
    
    var atkCard: Int {
        return detailCards?.atk ?? 0
    }
    
    var defCard: Int {
        return detailCards?.def ?? 0
    }
    
    var levelCard: Int {
        return detailCards?.level ?? 0
    }
    
    func detailCards(detail: Datum) {
        self.detailCards = detail
    }
}
