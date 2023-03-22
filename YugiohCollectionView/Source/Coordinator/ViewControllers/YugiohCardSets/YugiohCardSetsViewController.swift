//
//  YugiohCardSetsViewController.swift
//  YugiohCollectionView
//
//  Created by Rogerio Martins on 22/03/23.
//

import UIKit

class YugiohCardSetsViewController: UIViewController {
    
    let viewModelYugiohCardSets = YugiohCardSetsViewModel()
    
    lazy var viewYugiohCardSets: YugiohCardSetsView = {
        let view = YugiohCardSetsView()
        view.backgroundColor = .systemBackground
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        self.title = "SetCards"
        setupUI()
        setupTableView()
    }
    
    override func loadView() {
        self.view = viewYugiohCardSets
    }
    
    func setupTableView() {
        viewYugiohCardSets.myTableView.delegate = self
        viewYugiohCardSets.myTableView.dataSource = self
        viewYugiohCardSets.myTableView.register(CellYugiohCardsTableViewCell.self, forCellReuseIdentifier: CellYugiohCardsTableViewCell.identifier)
    }
   
    func setupUI() {
        setupCodeSetCard()
        setupRaritySetCard()
        setupRarityCodeSetCard()
        setupPriceSetCard()
    }
    
    func setupCodeSetCard() {
        viewYugiohCardSets.codeCardSet.text = "Código do Card = \(viewModelYugiohCardSets.setCodeCard)"
    }
    
    func setupRaritySetCard() {
        viewYugiohCardSets.rarityCardSet.text = "Raridade = \(viewModelYugiohCardSets.setraRarityCard)"
    }
    
    func setupRarityCodeSetCard() {
        viewYugiohCardSets.rarityCodeCardSet.text = "Raridade do Código = \(viewModelYugiohCardSets.setRarityCodeCard)"
    }
    
    func setupPriceSetCard() {
        viewYugiohCardSets.priceCardSet.text = "Preço da Carta = \(viewModelYugiohCardSets.setPriceCard)"
    }
}

extension YugiohCardSetsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModelYugiohCardSets.numberOfRows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = self.viewYugiohCardSets.myTableView.dequeueReusableCell(withIdentifier: CellYugiohCardsTableViewCell.identifier, for: indexPath) as? CellYugiohCardsTableViewCell {
            cell.setupCell(cards: viewModelYugiohCardSets.cellForRows(indexPath: indexPath))
            cell.backgroundColor = .clear
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
}
