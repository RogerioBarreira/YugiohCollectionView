//
//  CellYugiohCardCollectionViewCell.swift
//  YugiohCollectionView
//
//  Created by Rogerio Martins on 21/03/23.
//

import UIKit
import SDWebImage

class CellYugiohCardCollectionViewCell: UICollectionViewCell {
    
    static var identifier = "CellYugiohCardCollectionViewCell"
    
    let imageCardYugioh: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleToFill
        image.backgroundColor = .systemBackground
        image.layer.borderWidth = 2
        image.layer.borderColor = UIColor.systemYellow.cgColor
        image.layer.cornerRadius = 15
        image.clipsToBounds = true
        return image
    }()
    
    let nameCardYugioh: UILabel = {
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
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configConstraints() {
        setupImageCard()
        setupNameCard()
    }
    
    func setupImageCard() {
        contentView.addSubview(imageCardYugioh)
        NSLayoutConstraint.activate([
            imageCardYugioh.topAnchor.constraint(equalTo: self.topAnchor),
            imageCardYugioh.leadingAnchor
                .constraint(equalTo: self.leadingAnchor),
            imageCardYugioh.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            imageCardYugioh.heightAnchor.constraint(equalToConstant: 200),
            imageCardYugioh.widthAnchor.constraint(equalToConstant: 150),
        ])
    }
    
    func setupNameCard() {
        contentView.addSubview(nameCardYugioh)
        NSLayoutConstraint.activate([
            nameCardYugioh.topAnchor.constraint(equalTo: imageCardYugioh.bottomAnchor, constant: 5),
            nameCardYugioh.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            nameCardYugioh.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            nameCardYugioh.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            nameCardYugioh.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    func setupCell(card: Datum?) {
        let url = URL(string: card?.cardImages?.first?.imageURL ?? "")
        imageCardYugioh.sd_setImage(with: url)
        nameCardYugioh.text = card?.name ?? ""
    }
}
