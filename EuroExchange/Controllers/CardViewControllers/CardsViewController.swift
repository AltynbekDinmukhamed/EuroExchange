//
//  CardsViewController.swift
//  EuroExchange
//
//  Created by Димаш Алтынбек on 11.08.2023.
//

import Foundation
import UIKit

class CardsViewController: UIViewController {
    //MARK: -Variables
    let cardsLbl: UILabel = {
        let lbl = UILabel()
        lbl.text = "Cards"
        lbl.font = UIFont(name: "PlusJakartaSans-SemiBold", size: 20)
        lbl.textColor = UIColor(red: 0.078, green: 0.071, blue: 0.118, alpha: 1)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let littleCards: littleCardsViews = {
        let view = littleCardsViews()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var addCardBtn: UIButton = {
        let btn = UIButton()
        btn.setTitle("+ Add New", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.titleLabel?.font = UIFont(name: "PlusJakartaSans-SemiBold", size: 16)
        btn.layer.cornerRadius = 10
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action: #selector(addTapped), for: .touchUpInside)
        return btn
    }()
    //MARK: -LifeCycle-
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        littleCards.cardNumber.applyCardGradiant(color: [UIColor.blueFirst, UIColor.blueSecound])
        addCardBtn.applyButtonGradiant(color: [UIColor.blueFirst, UIColor.blueSecound])
    }
    //MARK: -Funtions-
    private func setUpViews() {
        navigationController?.isNavigationBarHidden = true
        view.backgroundColor = .white
        view.addSubview(cardsLbl)
        NSLayoutConstraint.activate([
            cardsLbl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 23),
            cardsLbl.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
        view.addSubview(littleCards)
        NSLayoutConstraint.activate([
            littleCards.topAnchor.constraint(equalTo: cardsLbl.bottomAnchor, constant: 68),
            littleCards.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            littleCards.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            littleCards.heightAnchor.constraint(equalToConstant: 50),
        ])
        view.addSubview(addCardBtn)
        NSLayoutConstraint.activate([
            addCardBtn.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -64),
            addCardBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            addCardBtn.widthAnchor.constraint(equalToConstant: 207),
            addCardBtn.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
    
    @objc func addTapped(_ sender: UIButton) {
        let vc = AddNewCardViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}
