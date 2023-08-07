//
//  CardInfoView.swift
//  EuroExchange
//
//  Created by Димаш Алтынбек on 08.08.2023.
//

import Foundation
import UIKit

class CardInfoView: UIView {
    //MARK: -Variable-
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
        lbl.text = "5456 **** **** ****"
        lbl.textColor = .white
        lbl.font = UIFont(name: "Poppins-SemiBold", size: 26)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let dateCardLbl: UILabel = {
        let lbl = UILabel()
        lbl.text = "11/22"
        lbl.font = UIFont(name: "Poppins-SemiBold", size: 16)
        lbl.textColor = .white
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let cvvLbl: UILabel = {
        let lbl = UILabel()
        lbl.text = "CVV ***"
        lbl.font = UIFont(name: "Poppins-SemiBold", size: 16)
        lbl.textColor = .white
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    lazy var seeBtn: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named: "see"), for: .normal)
        btn.addTarget(self, action: #selector(seeBtnTapped), for: .touchUpInside)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    
    
    //MARK: -Life Cycle-
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
            cardNumberLbl.topAnchor.constraint(equalTo: walletLbl.bottomAnchor, constant: 16),
            cardNumberLbl.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 29),
        ])
        addSubview(dateCardLbl)
        NSLayoutConstraint.activate([
            dateCardLbl.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -28),
            dateCardLbl.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 29),
        ])
        addSubview(cvvLbl)
        NSLayoutConstraint.activate([
            cvvLbl.topAnchor.constraint(equalTo: cardNumberLbl.bottomAnchor, constant: 23),
            cvvLbl.leadingAnchor.constraint(equalTo: dateCardLbl.trailingAnchor, constant: 48),
        ])
        addSubview(seeBtn)
        NSLayoutConstraint.activate([
            seeBtn.topAnchor.constraint(equalTo: cardNumberLbl.bottomAnchor, constant: 21),
            seeBtn.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -41),
            seeBtn.widthAnchor.constraint(equalToConstant: 22),
            seeBtn.heightAnchor.constraint(equalToConstant: 15),
        ])
    }
    
    @objc func seeBtnTapped(_ sender: UIButton) {
        
    }
}
