//
//  Request.swift
//  YugiohCollectionView
//
//  Created by Rogerio Martins on 21/03/23.
//

import Foundation

class Request: NSObject {
    
    func requestYugiohCards(completion: @escaping(YugiohCards?, Bool)-> Void) {
        
        guard let url = URL(string: "https://db.ygoprodeck.com/api/v7/cardinfo.php") else { return }
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "GET"
        
        let task = URLSession.shared.dataTask(with: urlRequest) { data, response, error in
            if error == nil {
                guard let response = response as? HTTPURLResponse else { return }
                if response.statusCode == 200 {
                    guard let data = data else { return }
                    do {
                        let yugiohCards = try JSONDecoder().decode(YugiohCards.self, from: data)
                        DispatchQueue.main.async {
                            completion(yugiohCards,true)
                        }
                    } catch {
                        print("Erro de Decodificação: \(error.localizedDescription)")
                        completion(nil,false)
                    }
                } else {
                    print("Erro de statusCode: \(response.statusCode)")
                    completion(nil,false)
                }
            } else {
                print("Error")
            }
        }
        task.resume()
    }
}
