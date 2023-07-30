//
//  CardView.swift
//  EuroExchange
//
//  Created by Димаш Алтынбек on 30.07.2023.
//

import Foundation
import UIKit

class CardView: UIView {
    //MARK: -Variables
    let walletLbl: UILabel = {
        let lbl = UILabel()
        lbl.text = "Wallet XYZ"
        lbl.textColor = .white
        lbl.alpha = 0.63
        lbl.font = UIFont(name: "Poppins-Medium", size: 16)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let cardNumberLbl: UILabel = {
        let lbl = UILabel()
        lbl.text = "**** **** **** ****"
        lbl.textColor = .white
        lbl.font = UIFont(name: "Poppins-SemiBold", size: 26)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let nameCardLbl: UILabel = {
        let lbl = UILabel()
        lbl.text = "NAME SURNAME"
        lbl.textColor = .white
        lbl.font = UIFont(name: "PlusJakartaSans-SemiBold", size: 12)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let dateCardLbl: UILabel = {
        let lbl = UILabel()
        lbl.text = "11/22"
        lbl.font = UIFont(name: "PlusJakartaSans-SemiBold", size: 12)
        lbl.textColor = .white
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    //MARK: -LifeCycle-
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    //MARK: -Functions-
    private func setUpViews() {
        clipsToBounds = true
        layer.cornerRadius = 14
        addSubview(walletLbl)
        NSLayoutConstraint.activate([
            walletLbl.topAnchor.constraint(equalTo: topAnchor, constant: 27),
            walletLbl.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 29),
        ])
        addSubview(cardNumberLbl)
        NSLayoutConstraint.activate([
            cardNumberLbl.topAnchor.constraint(equalTo: walletLbl.bottomAnchor, constant: 5),
            cardNumberLbl.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 29),
        ])
        addSubview(nameCardLbl)
        NSLayoutConstraint.activate([
            nameCardLbl.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -39),
            nameCardLbl.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 29),
        ])
        
        addSubview(dateCardLbl)
        NSLayoutConstraint.activate([
            dateCardLbl.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -39),
            dateCardLbl.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -57),
        ])
    }
    
}
