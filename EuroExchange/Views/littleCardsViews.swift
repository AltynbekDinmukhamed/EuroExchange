//
//  littleCardsViews.swift
//  EuroExchange
//
//  Created by Димаш Алтынбек on 11.08.2023.
//

import Foundation
import UIKit

class littleCardsViews: UIView {
    //MARK: -Variables-
//    let card: UIView = {
//        let view = UIView()
//        view.backgroundColor = .textBlue
//        view.translatesAutoresizingMaskIntoConstraints = false
//        return view
//    }()
    let cardNumber: UILabel = {
        let lbl = UILabel()
        lbl.text = "5555 ****"
        lbl.font = UIFont(name: "Poppins-Medium", size: 14)
        lbl.textColor = .white
        lbl.textAlignment = .center
        lbl.clipsToBounds = true
        lbl.layer.cornerRadius = 8
        lbl.backgroundColor = .textBlue
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let typeCardLbl: UILabel = {
        let lbl = UILabel()
        lbl.text = "Business"
        lbl.font = UIFont(name: "Poppins-Medium", size: 16)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let cardLbl: UILabel = {
        let lbl = UILabel()
        lbl.text = "card"
        lbl.font = UIFont(name: "Poppins-Medium", size: 16)
        lbl.textColor = UIColor(red: 0.613, green: 0.613, blue: 0.613, alpha: 1)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    //MARK: -Life Cycle-
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpVews()
    }
    
//    override func layoutSubviews() {
//        card.applyCardGradiant(color: [UIColor.blueFirst, UIColor.blueSecound])
//    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    //MARK: -Functions-
    private func setUpVews() {
//        addSubview(card)
//        NSLayoutConstraint.activate([
//            card.topAnchor.constraint(equalTo: topAnchor),
//            card.leadingAnchor.constraint(equalTo: leadingAnchor),
//            card.bottomAnchor.constraint(equalTo: bottomAnchor),
//            //card.heightAnchor.constraint(equalToConstant: frame.size.height),
//        ])
        addSubview(cardNumber)
        NSLayoutConstraint.activate([
            cardNumber.topAnchor.constraint(equalTo: topAnchor),
            cardNumber.leadingAnchor.constraint(equalTo: leadingAnchor),
            cardNumber.bottomAnchor.constraint(equalTo: bottomAnchor),
            cardNumber.widthAnchor.constraint(equalToConstant: 94)
        ])
        addSubview(typeCardLbl)
        NSLayoutConstraint.activate([
            typeCardLbl.topAnchor.constraint(equalTo: topAnchor),
            typeCardLbl.trailingAnchor.constraint(equalTo: trailingAnchor),
        ])
        addSubview(cardLbl)
        NSLayoutConstraint.activate([
            cardLbl.topAnchor.constraint(equalTo: typeCardLbl.bottomAnchor),
            cardLbl.trailingAnchor.constraint(equalTo: trailingAnchor),
        ])
    }
}
