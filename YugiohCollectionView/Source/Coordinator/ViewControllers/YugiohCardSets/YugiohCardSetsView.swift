//
//  YugiohCardSetsView.swift
//  YugiohCollectionView
//
//  Created by Rogerio Martins on 22/03/23.
//

import UIKit
import NVActivityIndicatorView

class YugiohCardSetsView: UIView {
    
    let nameTableViewCardSet: UILabel = {
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
    
    let myTableViewCardSet: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .systemYellow
        tableView.layer.cornerRadius = 10
        tableView.separatorStyle = .none
        return tableView
    }()
    
    let nameCardPrice: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .systemYellow
        label.textAlignment = .center
        label.text = "CARD PRICE"
        label.textColor = .black
        label.font = .systemFont(ofSize: 17, weight: .bold)
        label.layer.borderWidth = 2
        label.layer.borderColor = UIColor.systemBackground.cgColor
        label.layer.cornerRadius = 10
        label.clipsToBounds = true
        return label
    }()
    
    let cardMarketPrice: UILabel = {
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
    
    let tcgPlayerPrice: UILabel = {
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
    
    let ebayPrice: UILabel = {
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
    
    let amazonPrice: UILabel = {
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
    
    let coolStuffincPrice: UILabel = {
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
    
    let exitButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .systemBackground
        button.setTitle("EXIT", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 17, weight: .bold)
        button.backgroundColor = .systemYellow
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.systemBackground.cgColor
        button.layer.cornerRadius = 25
        button.clipsToBounds = true
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        configContraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configContraints() {
        setupNameTableViewCardSet()
        setupTableViewCardSet()
        setupNameCardPrice()
        setupCardMarketPrice()
        setupTcgPlayerPrice()
        setupEbayPrice()
        setupAmazonPrice()
        setupCoolStuffincPrice()
        setupButtonExit()
    }
    
    func setupNameTableViewCardSet() {
        addSubview(nameTableViewCardSet)
        NSLayoutConstraint.activate([
            nameTableViewCardSet.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 20),
            nameTableViewCardSet.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            nameTableViewCardSet.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25),
            nameTableViewCardSet.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    func setupTableViewCardSet() {
        addSubview(myTableViewCardSet)
        NSLayoutConstraint.activate([
            myTableViewCardSet.topAnchor.constraint(equalTo: nameTableViewCardSet.bottomAnchor, constant: 10),
            myTableViewCardSet.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            myTableViewCardSet.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -28),
            myTableViewCardSet.heightAnchor.constraint(equalToConstant: 150)
        ])
    }
    
    func setupNameCardPrice() {
        addSubview(nameCardPrice)
        NSLayoutConstraint.activate([
            nameCardPrice.topAnchor.constraint(equalTo: myTableViewCardSet.bottomAnchor, constant: 30),
            nameCardPrice.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            nameCardPrice.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25),
            nameCardPrice.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    func setupCardMarketPrice() {
        addSubview(cardMarketPrice)
        NSLayoutConstraint.activate([
            cardMarketPrice.topAnchor.constraint(equalTo: nameCardPrice.bottomAnchor, constant: 10),
            cardMarketPrice.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            cardMarketPrice.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25),
            cardMarketPrice.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    func setupTcgPlayerPrice() {
        addSubview(tcgPlayerPrice)
        NSLayoutConstraint.activate([
            tcgPlayerPrice.topAnchor.constraint(equalTo: cardMarketPrice.bottomAnchor, constant: 10),
            tcgPlayerPrice.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            tcgPlayerPrice.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25),
            tcgPlayerPrice.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    func setupEbayPrice() {
        addSubview(ebayPrice)
        NSLayoutConstraint.activate([
            ebayPrice.topAnchor.constraint(equalTo: tcgPlayerPrice.bottomAnchor, constant: 10),
            ebayPrice.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            ebayPrice.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25),
            ebayPrice.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    func setupAmazonPrice() {
        addSubview(amazonPrice)
        NSLayoutConstraint.activate([
            amazonPrice.topAnchor.constraint(equalTo: ebayPrice.bottomAnchor, constant: 10),
            amazonPrice.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            amazonPrice.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25),
            amazonPrice.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    func setupCoolStuffincPrice() {
        addSubview(coolStuffincPrice)
        NSLayoutConstraint.activate([
            coolStuffincPrice.topAnchor.constraint(equalTo: amazonPrice.bottomAnchor, constant: 10),
            coolStuffincPrice.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            coolStuffincPrice.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25),
            coolStuffincPrice.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    func setupButtonExit() {
        addSubview(exitButton)
        NSLayoutConstraint.activate([
            exitButton.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -15),
            exitButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            exitButton.heightAnchor.constraint(equalToConstant: 50),
            exitButton.widthAnchor.constraint(equalToConstant: 50)
        ])
    }
}
