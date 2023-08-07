//
//  RecentTransactionTableViewCell.swift
//  EuroExchange
//
//  Created by Димаш Алтынбек on 08.08.2023.
//

import Foundation
import UIKit

class RecentTransactionTableViewCell: UITableViewCell {
    //MARK: -Variable-
    let avatarImage: UIImageView = {
        let img = UIImageView()
        img.backgroundColor = .systemGray
        img.contentMode = .scaleAspectFit
        img.clipsToBounds = true
        img.layer.borderWidth = 1
        img.layer.cornerRadius = 25
        img.layer.borderColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.1).cgColor
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    let titleTransaction: UILabel = {
        let lbl = UILabel()
        lbl.text = "Netflix"
        lbl.textColor = UIColor(red: 0.078, green: 0.071, blue: 0.118, alpha: 1)
        lbl.font = UIFont(name: "PlusJakartaSans-SemiBold", size: 16)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let timeTransaction: UILabel = {
        let lbl = UILabel()
        lbl.text = "1 hour ago"
        lbl.textColor = UIColor(red: 0.486, green: 0.486, blue: 0.486, alpha: 1)
        lbl.font = UIFont(name: "PlusJakartaSans-SemiBold", size: 12)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let moneylbl: UILabel = {
        let lbl = UILabel()
        lbl.textColor = UIColor(red: 0.078, green: 0.071, blue: 0.118, alpha: 1)
        lbl.font = UIFont(name: "PlusJakartaSans-Bold", size: 16)
        lbl.text = "$2,00"
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    //MARK: -life cycle-
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUpViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    //MARK: -Functions-
    private func setUpViews() {
        addSubview(avatarImage)
        NSLayoutConstraint.activate([
            avatarImage.topAnchor.constraint(equalTo: topAnchor),
            avatarImage.leadingAnchor.constraint(equalTo: leadingAnchor),
            avatarImage.bottomAnchor.constraint(equalTo: bottomAnchor),
            avatarImage.heightAnchor.constraint(equalToConstant: 48),
            avatarImage.widthAnchor.constraint(equalToConstant: 48),
        ])
        //avatarImage.layer.cornerRadius = avatarImage.frame.size.height / 2
        addSubview(titleTransaction)
        NSLayoutConstraint.activate([
            titleTransaction.topAnchor.constraint(equalTo: topAnchor),
            titleTransaction.leadingAnchor.constraint(equalTo: avatarImage.trailingAnchor, constant: 12),
        ])
        addSubview(timeTransaction)
        NSLayoutConstraint.activate([
            timeTransaction.topAnchor.constraint(equalTo: titleTransaction.bottomAnchor, constant: 4),
            timeTransaction.leadingAnchor.constraint(equalTo: avatarImage.trailingAnchor, constant: 12),
        ])
        addSubview(moneylbl)
        NSLayoutConstraint.activate([
            moneylbl.centerYAnchor.constraint(equalTo: centerYAnchor),
            moneylbl.trailingAnchor.constraint(equalTo: trailingAnchor)	
        ])
    }
}
