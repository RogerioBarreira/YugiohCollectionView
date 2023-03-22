//
//  YugiohDetailCardsView.swift
//  YugiohCollectionView
//
//  Created by Rogerio Martins on 21/03/23.
//

import UIKit
import Cosmos

class YugiohDetailCardsView: UIView {
    
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
        label.backgroundColor = .systemYellow
        label.textAlignment = .center
        label.textColor = .black
        label.font = .systemFont(ofSize: 17, weight: .bold)
        label.layer.borderWidth = 2
        label.layer.borderColor = UIColor.systemYellow.cgColor
        label.layer.cornerRadius = 10
        label.clipsToBounds = true
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        return label
    }()
    
    let textDescription: UITextView = {
        let text = UITextView()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.backgroundColor = .systemBackground
        text.textAlignment = .justified
        text.textColor = .label
        text.font = .systemFont(ofSize: 17, weight: .bold)
        text.isScrollEnabled = true
        text.layer.borderWidth = 2
        text.layer.borderColor = UIColor.systemYellow.cgColor
        text.layer.cornerRadius = 10
        text.clipsToBounds = true
        return text
    }()
    
    let atkCardYugioh: CosmosView = {
        let view = CosmosView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemBackground
        view.settings.textColor = .label
        view.settings.textFont = .systemFont(ofSize: 17, weight: .bold)
        view.settings.starMargin = 1
        view.settings.totalStars = 10
        view.settings.filledColor = .systemYellow
        view.settings.filledBorderWidth = 1
        view.settings.filledBorderColor = .label
        view.tintColor = .blue
        return view
    }()
    
    let defCardYugioh: CosmosView = {
        let view = CosmosView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemBackground
        view.settings.textColor = .label
        view.settings.textFont = .systemFont(ofSize: 17, weight: .bold)
        view.settings.starMargin = 1
        view.settings.totalStars = 10
        view.settings.filledColor = .systemYellow
        view.settings.filledBorderWidth = 1
        view.settings.filledBorderColor = .label
        return view
    }()
    
    let levelCardYugioh: CosmosView = {
        let view = CosmosView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemBackground
        view.settings.textColor = .label
        view.settings.textFont = .systemFont(ofSize: 17, weight: .bold)
        view.settings.starMargin = 1
        view.settings.totalStars = 10
        view.settings.filledColor = .systemYellow
        view.settings.filledBorderWidth = 1
        view.settings.filledBorderColor = .label
        return view
    }()
    
    let nextButtonYugioh: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .systemBackground
        button.setTitle("Next", for: .normal)
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
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configConstraints() {
        setupImageCard()
        setupNameCard()
        setupTextDescr()
        setupAtkCard()
        setupDefCard()
        setupLevelCard()
        setupNextButtonCard()
    }
    
    func setupImageCard() {
        addSubview(imageCardYugioh)
        NSLayoutConstraint.activate([
            imageCardYugioh.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 15),
            imageCardYugioh.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            imageCardYugioh.heightAnchor.constraint(equalToConstant: 300),
            imageCardYugioh.widthAnchor.constraint(equalToConstant: 350),
        ])
    }
    
    func setupNameCard() {
        addSubview(nameCardYugioh)
        NSLayoutConstraint.activate([
            nameCardYugioh.topAnchor.constraint(equalTo: imageCardYugioh.bottomAnchor, constant: 15),
            nameCardYugioh.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            nameCardYugioh.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25),
            nameCardYugioh.heightAnchor.constraint(equalToConstant: 35)
        ])
    }
    
    func setupTextDescr() {
        addSubview(textDescription)
        NSLayoutConstraint.activate([
            textDescription.topAnchor.constraint(equalTo: nameCardYugioh.bottomAnchor, constant: 15),
            textDescription.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            textDescription.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25),
            textDescription.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    func setupAtkCard() {
        addSubview(atkCardYugioh)
        NSLayoutConstraint.activate([
            atkCardYugioh.topAnchor.constraint(equalTo: textDescription.bottomAnchor, constant: 20),
            atkCardYugioh.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            atkCardYugioh.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25),
            atkCardYugioh.heightAnchor.constraint(equalToConstant: 25)
        ])
    }
    
    func setupDefCard() {
        addSubview(defCardYugioh)
        NSLayoutConstraint.activate([
            defCardYugioh.topAnchor.constraint(equalTo: atkCardYugioh.bottomAnchor, constant: 5),
            defCardYugioh.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            defCardYugioh.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25),
            defCardYugioh.heightAnchor.constraint(equalToConstant: 25)
        ])
    }
    
    func setupLevelCard() {
        addSubview(levelCardYugioh)
        NSLayoutConstraint.activate([
            levelCardYugioh.topAnchor.constraint(equalTo: defCardYugioh.bottomAnchor, constant: 5),
            levelCardYugioh.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            levelCardYugioh.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25),
            levelCardYugioh.heightAnchor.constraint(equalToConstant: 25)
        ])
    }
    
    func setupNextButtonCard() {
        addSubview(nextButtonYugioh)
        NSLayoutConstraint.activate([
            nextButtonYugioh.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -15),
            nextButtonYugioh.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25),
            nextButtonYugioh.heightAnchor.constraint(equalToConstant: 50),
            nextButtonYugioh.widthAnchor.constraint(equalToConstant: 50)
        ])
    }
}
