//
//  YugiohCardSetDetailViewController.swift
//  YugiohCollectionView
//
//  Created by Rogerio Martins on 22/03/23.
//

import UIKit

class YugiohCardSetDetailViewController: UIViewController {
    
    let viewModelDetailCardSets = YugiohCardSetDetailViewModel()

    lazy var viewYugiohDetailCardSets: YugiohCardSetDetailView = {
        let view = YugiohCardSetDetailView()
        view.backgroundColor = .systemBackground
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        self.title = viewModelDetailCardSets.setNameCard
        setupUI()
    }
    
    override func loadView() {
        self.view = viewYugiohDetailCardSets
    }
    
    func setupUI() {
        setupCodeSetCard()
        setupRaritySetCard()
        setupRarityCodeSetCard()
        setupPriceSetCard()
    }
    
    func setupCodeSetCard() {
        viewYugiohDetailCardSets.codeCardSet.text = "Código do Card = \(viewModelDetailCardSets.setCodeCard)"
    }
    
    func setupRaritySetCard() {
        viewYugiohDetailCardSets.rarityCardSet.text = "Raridade = \(viewModelDetailCardSets.setraRarityCard)"
    }
    
    func setupRarityCodeSetCard() {
        viewYugiohDetailCardSets.rarityCodeCardSet.text = "Raridade do Código = \(viewModelDetailCardSets.setRarityCodeCard)"
    }
    
    func setupPriceSetCard() {
        viewYugiohDetailCardSets.priceCardSet.text = "Preço da Carta = \(viewModelDetailCardSets.setPriceCard)"
    }
}
