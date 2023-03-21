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
        setupSearchBar()
        setupCollectionView()
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
                self.viewYugiohCards.myCollectionView.reloadData()
                print("Request OK")
            } else {
                self.showMessageError()
            }
        }
    }
    
    func setupSearchBar() {
        self.viewYugiohCards.mySearchBar.delegate = self
    }
    
    func setupCollectionView() {
        self.viewYugiohCards.myCollectionView.delegate = self
        self.viewYugiohCards.myCollectionView.dataSource = self
        self.viewYugiohCards.myCollectionView.register(CellYugiohCardCollectionViewCell.self, forCellWithReuseIdentifier: CellYugiohCardCollectionViewCell.identifier)
    }
    
    func showMessageError() {
        let alert = UIAlertController(title: "Erro", message: "Falha na resposta", preferredStyle: .alert)
        let buttonOk = UIAlertAction(title: "OK", style: .destructive)
        alert.addAction(buttonOk)
        self.present(alert, animated: true, completion: nil)
    }
}

extension YugiohCardsViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModelYugiohCards.filter.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = self.viewYugiohCards.myCollectionView.dequeueReusableCell(withReuseIdentifier: CellYugiohCardCollectionViewCell.identifier, for: indexPath) as? CellYugiohCardCollectionViewCell {
            
            cell.setupCell(card: viewModelYugiohCards.filter[indexPath.row])
            return cell
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let coordinator = Coordinator(navigationController: navigationController)
        coordinator.startYugiohDetailCards(detail: viewModelYugiohCards.filter[indexPath.row])
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 185, height: 300)
    }
}

extension YugiohCardsViewController: UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        self.viewModelYugiohCards.filter = []
        if !searchText.isEmpty {
            for value in self.viewModelYugiohCards.model ?? [] {
                let name = value.name ?? ""
                if name.uppercased().contains(searchText.uppercased()) {
                    self.viewModelYugiohCards.filter.append(value)
                }
            }
        } else {
            self.viewModelYugiohCards.filter = self.viewModelYugiohCards.model ?? []
        }
        self.viewYugiohCards.myCollectionView.reloadData()
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        viewYugiohCards.mySearchBar.resignFirstResponder()
    }
}
