//
//  YugiohCardSetDetailView.swift
//  YugiohCollectionView
//
//  Created by Rogerio Martins on 22/03/23.
//

import UIKit

class YugiohCardSetDetailView: UIView {

    let nameCardSet: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .systemYellow
        label.textAlignment = .center
        label.text = "SET CARDS"
        label.textColor = .black
        label.font = .systemFont(ofSize: 17, weight: .bold)
        label.layer.borderWidth = 2
        label.layer.borderColor = UIColor.systemBackground.cgColor
        label.layer.cornerRadius = 10
        label.clipsToBounds = true
        return label
    }()

    let codeCardSet: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .systemBackground
        label.textAlignment = .center
        label.textColor = .label
        label.font = .systemFont(ofSize: 17, weight: .bold)
        label.layer.borderWidth = 2
        label.layer.borderColor = UIColor.systemYellow.cgColor
        label.layer.cornerRadius = 10
        label.clipsToBounds = true
        return label
    }()
    
    let rarityCardSet: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .systemBackground
        label.textAlignment = .center
        label.textColor = .label
        label.font = .systemFont(ofSize: 17, weight: .bold)
        label.layer.borderWidth = 2
        label.layer.borderColor = UIColor.systemYellow.cgColor
        label.layer.cornerRadius = 10
        label.clipsToBounds = true
        return label
    }()
    
    let rarityCodeCardSet: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .systemBackground
        label.textAlignment = .center
        label.textColor = .label
        label.font = .systemFont(ofSize: 17, weight: .bold)
        label.layer.borderWidth = 2
        label.layer.borderColor = UIColor.systemYellow.cgColor
        label.layer.cornerRadius = 10
        label.clipsToBounds = true
        return label
    }()
    
    let priceCardSet: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .systemBackground
        label.textAlignment = .center
        label.textColor = .label
        label.font = .systemFont(ofSize: 17, weight: .bold)
        label.layer.borderWidth = 2
        label.layer.borderColor = UIColor.systemYellow.cgColor
        label.layer.cornerRadius = 10
        label.clipsToBounds = true
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        configContraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configContraints() {
        setupNameCardSet()
        setupCodeCardSet()
        setupRarityCardSet()
        setupRarityCodeCardSet()
        setupPriceCardSet()
    }
    
    func setupNameCardSet() {
        addSubview(nameCardSet)
        NSLayoutConstraint.activate([
            nameCardSet.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 20),
            nameCardSet.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            nameCardSet.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25),
            nameCardSet.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    func setupCodeCardSet() {
        addSubview(codeCardSet)
        NSLayoutConstraint.activate([
            codeCardSet.topAnchor.constraint(equalTo: nameCardSet.bottomAnchor, constant: 10),
            codeCardSet.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            codeCardSet.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25),
            codeCardSet.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    func setupRarityCardSet() {
        addSubview(rarityCardSet)
        NSLayoutConstraint.activate([
            rarityCardSet.topAnchor.constraint(equalTo: codeCardSet.bottomAnchor, constant: 10),
            rarityCardSet.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            rarityCardSet.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25),
            rarityCardSet.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    func setupRarityCodeCardSet() {
        addSubview(rarityCodeCardSet)
        NSLayoutConstraint.activate([
            rarityCodeCardSet.topAnchor.constraint(equalTo: rarityCardSet.bottomAnchor, constant: 10),
            rarityCodeCardSet.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            rarityCodeCardSet.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25),
            rarityCodeCardSet.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    func setupPriceCardSet() {
        addSubview(priceCardSet)
        NSLayoutConstraint.activate([
            priceCardSet.topAnchor.constraint(equalTo: rarityCodeCardSet.bottomAnchor, constant: 10),
            priceCardSet.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            priceCardSet.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25),
            priceCardSet.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
}
