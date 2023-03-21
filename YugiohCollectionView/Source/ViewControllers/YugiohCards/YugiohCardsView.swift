//
//  YugiohCardsView.swift
//  YugiohCollectionView
//
//  Created by Rogerio Martins on 21/03/23.
//

import UIKit
import NVActivityIndicatorView

class YugiohCardsView: UIView {
    
    let loading: NVActivityIndicatorView = {
        let load = NVActivityIndicatorView(frame: CGRect.zero, type: .circleStrokeSpin, color: .systemYellow, padding: 30)
        load.translatesAutoresizingMaskIntoConstraints = false
        load.color = .systemYellow
        return load
    }()
    
    let mySearchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        searchBar.searchBarStyle = .minimal
        return searchBar
    }()
    
    let myCollectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewFlowLayout.init())
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .clear
        let layout = UICollectionViewFlowLayout.init()
        layout.scrollDirection = .vertical
        collectionView.setCollectionViewLayout(layout, animated: true)
        collectionView.showsVerticalScrollIndicator = true
        return collectionView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configConstraints() {
        setupSearchBar()
        setupCollectioView()
        setupLoad()
    }
    
    func setupSearchBar() {
        addSubview(mySearchBar)
        NSLayoutConstraint.activate([
            mySearchBar.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            mySearchBar.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            mySearchBar.trailingAnchor.constraint(equalTo: self.trailingAnchor)
        ])
    }
    
    func setupCollectioView() {
        addSubview(myCollectionView)
        NSLayoutConstraint.activate([
            myCollectionView.topAnchor.constraint(equalTo: mySearchBar.bottomAnchor),
            myCollectionView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            myCollectionView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            myCollectionView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
    func setupLoad() {
        addSubview(loading)
        NSLayoutConstraint.activate([
            loading.centerXAnchor.constraint(equalTo: myCollectionView.centerXAnchor),
            loading.centerYAnchor.constraint(equalTo: myCollectionView.centerYAnchor)
        ])
    }
}
