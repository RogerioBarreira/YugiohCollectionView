//
//  YugiohCards.swift
//  YugiohCollectionView
//
//  Created by Rogerio Martins on 21/03/23.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let yugiohCards = try? JSONDecoder().decode(YugiohCards.self, from: jsonData)

import Foundation

// MARK: - YugiohCards
struct YugiohCards: Codable {
    let data: [Datum]?
}

// MARK: - Datum
struct Datum: Codable {
    let id: Int?
    let name, type, frameType, desc: String?
    let atk, def, level: Int?
    let race, attribute: String?
    let cardSets: [CardSet]?
    let cardImages: [CardImage]?
    let cardPrices: [CardPrice]?

    enum CodingKeys: String, CodingKey {
        case id, name, type, frameType, desc, atk, def, level, race, attribute
        case cardSets = "card_sets"
        case cardImages = "card_images"
        case cardPrices = "card_prices"
    }
}

// MARK: - CardImage
struct CardImage: Codable {
    let id: Int?
    let imageURL, imageURLSmall, imageURLCropped: String?

    enum CodingKeys: String, CodingKey {
        case id
        case imageURL = "image_url"
        case imageURLSmall = "image_url_small"
        case imageURLCropped = "image_url_cropped"
    }
}

// MARK: - CardPrice
struct CardPrice: Codable {
    let cardmarketPrice, tcgplayerPrice, ebayPrice, amazonPrice: String?
    let coolstuffincPrice: String?

    enum CodingKeys: String, CodingKey {
        case cardmarketPrice = "cardmarket_price"
        case tcgplayerPrice = "tcgplayer_price"
        case ebayPrice = "ebay_price"
        case amazonPrice = "amazon_price"
        case coolstuffincPrice = "coolstuffinc_price"
    }
}

// MARK: - CardSet
struct CardSet: Codable {
    let setName, setCode, setRarity, setRarityCode: String?
    let setPrice: String?

    enum CodingKeys: String, CodingKey {
        case setName = "set_name"
        case setCode = "set_code"
        case setRarity = "set_rarity"
        case setRarityCode = "set_rarity_code"
        case setPrice = "set_price"
    }
}

