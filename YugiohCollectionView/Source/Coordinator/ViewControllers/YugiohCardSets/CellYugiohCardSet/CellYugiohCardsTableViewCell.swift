//
//  CellYugiohCardsTableViewCell.swift
//  YugiohCollectionView
//
//  Created by Rogerio Martins on 22/03/23.
//

import UIKit

class CellYugiohCardsTableViewCell: UITableViewCell {
    
    static var identifier: String = "CellYugiohCardsTableViewCell"
    
    let cellCardSet: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .black
        label.textAlignment = .center
        label.textColor = .systemYellow
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.layer.borderWidth = 2
        label.layer.borderColor = UIColor.white.cgColor
        label.layer.cornerRadius = 10
        label.clipsToBounds = true
        return label
    }()

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        configConstraints()
    }
    
    func configConstraints() {
        setupNameCard()
    }
    
    func setupNameCard() {
        contentView.addSubview(cellCardSet)
        NSLayoutConstraint.activate([
            cellCardSet.topAnchor.constraint(equalTo: self.topAnchor, constant: 5),
            cellCardSet.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            cellCardSet.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5),
            cellCardSet.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -5),
            cellCardSet.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func setupCell(cards: CardSet?) {
        cellCardSet.text = cards?.setName ?? ""
    }
}
