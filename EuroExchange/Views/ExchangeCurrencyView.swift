//
//  ExchangeCurrencyView.swift
//  EuroExchange
//
//  Created by Димаш Алтынбек on 06.08.2023.
//

import Foundation
import UIKit

class ExchangeCurrencyView: UIView {
    //MARK: --
    let amount: UILabel = {
        let lbl = UILabel()
        lbl.text = "1.000"
        lbl.font = UIFont(name: "PlusJakartaSans-Bold", size: 32)
        lbl.textColor = .white
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let dolorImage: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "dollor")
        img.contentMode = .scaleAspectFit
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
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
        addSubview(amount)
        NSLayoutConstraint.activate([
            amount.centerYAnchor.constraint(equalTo: centerYAnchor),
            amount.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
        ])
        addSubview(dolorImage)
        NSLayoutConstraint.activate([
            dolorImage.centerYAnchor.constraint(equalTo: centerYAnchor),
            dolorImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            dolorImage.heightAnchor.constraint(equalToConstant: 38.89),
            dolorImage.widthAnchor.constraint(equalToConstant: 24),
            
        ])
    }
}
