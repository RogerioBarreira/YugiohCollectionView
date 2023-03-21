//
//  YugiohCardsViewController.swift
//  YugiohCollectionView
//
//  Created by Rogerio Martins on 20/03/23.
//

import UIKit

class YugiohCardsViewController: UIViewController {
    
    let viewModelYugiohCards = YugiohCardsViewModel()
    
    lazy var viewYugiohCards: YugiohCardsView = {
        let view = YugiohCardsView()
        view.backgroundColor = .systemBackground
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.title = "Yugioh Cards"
        setupRequest()
    }
    
    override func loadView() {
        self.view = viewYugiohCards
    }
    
    func setupRequest() {
        viewYugiohCards.loading.startAnimating()
        viewModelYugiohCards.requestYugiohCards { [weak self] success in
            guard let self = self else { return }
            self.viewYugiohCards.loading.stopAnimating()
            if success {
                print("Request OK")
            } else {
                self.showMessageError()
            }
        }
    }

    func showMessageError() {
        let alert = UIAlertController(title: "Erro", message: "Falha na resposta", preferredStyle: .alert)
        let buttonOk = UIAlertAction(title: "OK", style: .destructive)
        alert.addAction(buttonOk)
        self.present(alert, animated: true, completion: nil)
    }
}
