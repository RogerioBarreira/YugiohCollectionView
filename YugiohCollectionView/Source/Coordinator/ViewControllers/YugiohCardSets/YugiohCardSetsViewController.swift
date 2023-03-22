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
        self.title = viewModelYugiohCardSets.setNameCard
        setupTableView()
        setupActions()
    }
    
    override func loadView() {
        self.view = viewYugiohCardSets
    }
    
    func setupTableView() {
        viewYugiohCardSets.myTableViewCardSet.delegate = self
        viewYugiohCardSets.myTableViewCardSet.dataSource = self
        viewYugiohCardSets.myTableViewCardSet.register(CellYugiohCardsTableViewCell.self, forCellReuseIdentifier: CellYugiohCardsTableViewCell.identifier)
    }
    
    func setupActions() {
        self.viewYugiohCardSets.exitButton.addTarget(self, action: #selector(exitYugiohCarsSets), for: .touchUpInside)
    }
    
    @objc
    func exitYugiohCarsSets() {
        let coordinator = Coordinator(navigationController: navigationController)
        coordinator.popViewController()
    }
}

extension YugiohCardSetsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModelYugiohCardSets.numberOfRows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = self.viewYugiohCardSets.myTableViewCardSet.dequeueReusableCell(withIdentifier: CellYugiohCardsTableViewCell.identifier, for: indexPath) as? CellYugiohCardsTableViewCell {
            cell.setupCell(cards: viewModelYugiohCardSets.cellForRows(indexPath: indexPath))
            cell.backgroundColor = .clear
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let coordinator = Coordinator(navigationController: navigationController)
        coordinator.startYugiohDetailCardsSets(detail: viewModelYugiohCardSets.cellForRows(indexPath: indexPath))
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
}
