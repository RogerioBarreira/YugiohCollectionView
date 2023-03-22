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
    
    let nameTableViewCardPrice: UILabel = {
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
    
    let myTableViewCardPrice: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .systemYellow
        tableView.layer.cornerRadius = 10
        tableView.separatorStyle = .none
        return tableView
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
        setupNameTableViewCardPrice()
        setupTableViewCardPrice()
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
    
    func setupNameTableViewCardPrice() {
        addSubview(nameTableViewCardPrice)
        NSLayoutConstraint.activate([
            nameTableViewCardPrice.topAnchor.constraint(equalTo: myTableViewCardSet.bottomAnchor, constant: 30),
            nameTableViewCardPrice.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            nameTableViewCardPrice.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25),
            nameTableViewCardPrice.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    func setupTableViewCardPrice() {
        addSubview(myTableViewCardPrice)
        NSLayoutConstraint.activate([
            myTableViewCardPrice.topAnchor.constraint(equalTo: nameTableViewCardPrice.bottomAnchor, constant: 10),
            myTableViewCardPrice.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            myTableViewCardPrice.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25),
            myTableViewCardPrice.heightAnchor.constraint(equalToConstant: 150)
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
