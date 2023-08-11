//
//  CardInfoViewController.swift
//  EuroExchange
//
//  Created by Димаш Алтынбек on 08.08.2023.
//

import Foundation
import UIKit

class CardInfoViewController: UIViewController {
    //MARK: -Variable-
    let cardInfoLbl: UILabel = {
        let lbl = UILabel()
        lbl.text = "Card info"
        lbl.font = UIFont(name: "PlusJakartaSans-SemiBold", size: 20)
        lbl.textColor = UIColor(red: 0.078, green: 0.071, blue: 0.118, alpha: 1)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    lazy var setUpButton: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named: "settings"), for: .normal)
        btn.addTarget(self, action: #selector(settingTapped), for: .touchUpInside)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    let card: CardInfoView = {
        let crd = CardInfoView()
        crd.translatesAutoresizingMaskIntoConstraints = false
        return crd
    }()
    
    let recentTransactionlbl: UILabel = {
        let lbl = UILabel()
        lbl.text = "Recent Transaction"
        lbl.font = UIFont(name: "PlusJakartaSans-SemiBold", size: 20)
        lbl.textColor = UIColor(red: 0.078, green: 0.071, blue: 0.118, alpha: 1)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let recentTransactionTable: UITableView = {
        let table = UITableView()
        table.register(RecentTransactionTableViewCell.self, forCellReuseIdentifier: "Cell")
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()
    
    //MARK: -LifeCycle-
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
        recentTransactionTable.dataSource = self
        recentTransactionTable.delegate = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        card.applyCardGradiant(color: [UIColor.blueSecound, UIColor.blueFirst,])
        
    }
    
    //MARK: -Functions-
    private func setUpViews() {
        navigationController?.isNavigationBarHidden = true
        view.backgroundColor = .white
        view.addSubview(cardInfoLbl)
        NSLayoutConstraint.activate([
            cardInfoLbl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 23),
            cardInfoLbl.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
        view.addSubview(setUpButton)
        NSLayoutConstraint.activate([
            setUpButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 23),
            setUpButton.trailingAnchor.constraint(equalTo: view.trailingAnchor , constant: -28),
            setUpButton.widthAnchor.constraint(equalToConstant: 24),
            setUpButton.heightAnchor.constraint(equalToConstant: 24),
        ])
        view.addSubview(card)
        NSLayoutConstraint.activate([
            card.topAnchor.constraint(equalTo: cardInfoLbl.bottomAnchor, constant: 14),
            card.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            card.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            card.heightAnchor.constraint(equalToConstant: 175),
        ])
        view.addSubview(recentTransactionlbl)
        NSLayoutConstraint.activate([
            recentTransactionlbl.topAnchor.constraint(equalTo: card.bottomAnchor, constant: 66),
            recentTransactionlbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24)
        ])
        view.addSubview(recentTransactionTable)
        NSLayoutConstraint.activate([
            recentTransactionTable.topAnchor.constraint(equalTo: recentTransactionlbl.bottomAnchor, constant: 20),
            recentTransactionTable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            recentTransactionTable.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            recentTransactionTable.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
    }
    
    @objc func settingTapped(_ sender: UIButton) {
        let vc = SettingViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}

//MARK: -Extension-

extension CardInfoViewController: UITableViewDelegate {

}

extension CardInfoViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! RecentTransactionTableViewCell
        cell.contentView.frame.inset(by: UIEdgeInsets(top: 5, left: 0, bottom: 5, right: 0))
        return cell
    }
    
    
}
