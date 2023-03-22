//
//  YugiohCardSetsViewModel.swift
//  YugiohCollectionView
//
//  Created by Rogerio Martins on 22/03/23.
//

import Foundation

class YugiohCardSetsViewModel: NSObject {
    
    private var myCardSet: Datum?
    
    var setNameCard: String {
        myCardSet?.cardSets?.first?.setName ?? ""
    }
    
    var setCodeCard: String {
        myCardSet?.cardSets?.first?.setCode ?? ""
    }
    
    var setraRarityCard: String {
        myCardSet?.cardSets?.first?.setPrice ?? ""
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
