//
//  YugiohDetailCardsViewController.swift
//  YugiohCollectionView
//
//  Created by Rogerio Martins on 21/03/23.
//

import UIKit
import SDWebImage

class YugiohDetailCardsViewController: UIViewController {
    
    let viewModelYugiohDetail = YugiohDetailCardsViewModel()
    
    lazy var viewYugiohDetailCards: YugiohDetailCardsView = {
        let view = YugiohDetailCardsView()
        view.backgroundColor = .systemBackground
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = viewModelYugiohDetail.nameCard
        navigationController?.navigationBar.prefersLargeTitles = true
        setupUI()

    }
    
    override func loadView() {
        self.view = viewYugiohDetailCards
    }
    
    func setupUI() {
        setupImageCard()
        setupNameCard()
        setupDescrCard()
        setupAtkCard()
        setupDefCard()
        setupLevelCard()
    }
    
    func setupImageCard() {
        viewYugiohDetailCards.imageCardYugioh.sd_setImage(with: viewModelYugiohDetail.imageUrl)
    }
    
    func setupNameCard() {
        viewYugiohDetailCards.nameCardYugioh.text = viewModelYugiohDetail.nameCard
    }
    
    func setupDescrCard() {
        viewYugiohDetailCards.textDescription.text = viewModelYugiohDetail.descCard
    }
    
    func setupAtkCard() {
        viewYugiohDetailCards.atkCardYugioh.text = "Atack = \(viewModelYugiohDetail.atkCard)"
        viewYugiohDetailCards.atkCardYugioh.rating = Double(viewModelYugiohDetail.atkCard)/100
    }
    
    func setupDefCard() {
        viewYugiohDetailCards.defCardYugioh.text = "Defesa = \(viewModelYugiohDetail.defCard)"
        viewYugiohDetailCards.defCardYugioh.rating = Double(viewModelYugiohDetail.defCard)/100
    }
    
    func setupLevelCard() {
        viewYugiohDetailCards.levelCardYugioh.text = "Level = \(viewModelYugiohDetail.levelCard)"
        viewYugiohDetailCards.levelCardYugioh.rating = Double(viewModelYugiohDetail.levelCard)
    }
}
