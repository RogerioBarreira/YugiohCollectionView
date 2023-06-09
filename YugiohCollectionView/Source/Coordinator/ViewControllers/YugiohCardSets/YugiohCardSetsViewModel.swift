//
//  YugiohCardSetsViewModel.swift
//  YugiohCollectionView
//
//  Created by Rogerio Martins on 22/03/23.
//

import Foundation

class YugiohCardSetsViewModel: NSObject {
    
    private var myCardSet: Datum?
        
    var cardMarketPrice: String {
        myCardSet?.cardPrices?.first?.cardmarketPrice ?? ""
    }
    
    var tcgPlayerPrice: String {
        myCardSet?.cardPrices?.first?.tcgplayerPrice ?? ""
    }
    
    var ebayPrice: String {
        myCardSet?.cardPrices?.first?.ebayPrice ?? ""
    }
    
    var amazonPrice: String {
        myCardSet?.cardPrices?.first?.amazonPrice ?? ""
    }
    
    var coolStuffincPrice: String {
        myCardSet?.cardPrices?.first?.coolstuffincPrice ?? ""
    }
    
    var resultDetail: [CardSet]? {
        myCardSet?.cardSets
    }
    
    var setNameCard: String {
        myCardSet?.name ?? ""
    }
    
    var setCodeCard: String {
        myCardSet?.cardSets?.first?.setCode ?? ""
    }
    
    var setraRarityCard: String {
        myCardSet?.cardSets?.first?.setRarity ?? ""
    }
    
    var setRarityCodeCard: String {
        myCardSet?.cardSets?.first?.setRarityCode ?? ""
    }
    
    var setPriceCard: String {
        myCardSet?.cardSets?.first?.setPrice ?? ""
    }
    
    var numberOfRows: Int {
        myCardSet?.cardSets?.count ?? 0
    }
    
    func cellForRows(indexPath: IndexPath) -> CardSet? {
        return myCardSet?.cardSets?[indexPath.row]
    }
    
    func getResultCard(detail: Datum?) {
        myCardSet = detail
    }
}
