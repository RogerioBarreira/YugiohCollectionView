//
//  YugiohCardSetDetailViewModel.swift
//  YugiohCollectionView
//
//  Created by Rogerio Martins on 22/03/23.
//

import Foundation

class YugiohCardSetDetailViewModel: NSObject {
    
    private var result: CardSet?
    
    var setNameCard: String {
        result?.setName ?? ""
    }
    
    var setCodeCard: String {
        result?.setCode ?? ""
    }
    
    var setraRarityCard: String {
        result?.setRarity ?? ""
    }
    
    var setRarityCodeCard: String {
        result?.setRarityCode ?? ""
    }
    
    var setPriceCard: String {
        result?.setPrice ?? ""
    }
    
    func getResultCard(detail: CardSet?) {
        self.result = detail
    }
}
