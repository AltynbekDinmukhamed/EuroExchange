//
//  HomeViewController.swift
//  EuroExchange
//
//  Created by Димаш Алтынбек on 10.08.2023.
//

import Foundation
import UIKit

class HomeViewController: UIViewController {
    //MARK: -variable-
    let welcomeBackLbl: UILabel = {
        let lbl = UILabel()
        lbl.text = "Welcome back, ********"
        lbl.font = UIFont(name: "PlusJakartaSans-Regular", size: 16)
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
    
    let amountMoneyLbl: UILabel = {
        let lbl = UILabel()
        lbl.text = "222$"
        lbl.font = UIFont(name: "PlusJakartaSans-Bold", size: 48)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    lazy var dollorBtn: UIButton = {
        let btn = UIButton()
        btn.setTitle("$", for: .normal)
        btn.titleLabel?.font = UIFont(name: "PlusJakartaSans-Bold", size: 36)
        btn.layer.cornerRadius = 35
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action: #selector(dollorBtnTapped), for: .touchUpInside)
        return btn
    }()
    
    lazy var euroBtn: UIButton = {
        let btn = UIButton()
        btn.setTitle("€", for: .normal)
        btn.titleLabel?.font = UIFont(name: "PlusJakartaSans-Bold", size: 36)
        btn.layer.cornerRadius = 35
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = UIColor(red: 0.851, green: 0.851, blue: 0.918, alpha: 1)
        btn.setTitleColor(.textBlue, for: .normal)
        btn.addTarget(self, action: #selector(euroBtnTapped), for: .touchUpInside)
        return btn
    }()
    
    lazy var fountBtn: UIButton = {
        let btn = UIButton()
        btn.setTitle("£", for: .normal)
        btn.titleLabel?.font = UIFont(name: "PlusJakartaSans-Bold", size: 36)
        btn.backgroundColor = UIColor(red: 0.851, green: 0.851, blue: 0.918, alpha: 1)
        btn.setTitleColor(.textBlue, for: .normal)
        btn.layer.cornerRadius = 35
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action: #selector(fountBtnTapped), for: .touchUpInside)
        return btn
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
    
    lazy var MoreButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("More", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.layer.cornerRadius = 10
        btn.addTarget(self, action: #selector(moreButtonTapped), for: .touchUpInside)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    //MARK: -LifeCycle-
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpVeiws()
        recentTransactionTable.dataSource = self
        recentTransactionTable.delegate = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let gradient = UIImage.gradientImage(bounds: amountMoneyLbl.bounds, colors: [UIColor.textBlue, UIColor.textBlueSecound])
        amountMoneyLbl.textColor = UIColor(patternImage: gradient)
        
        dollorBtn.applyButtonGradiant(color: [UIColor.blueSecound, UIColor.blueFirst])
        MoreButton.applyButtonGradiant(color: [UIColor.blueSecound, UIColor.blueFirst])
    }
    //MARK: -functions-
    private func setUpVeiws() {
        navigationController?.isNavigationBarHidden = true
        view.backgroundColor = .white
        view.addSubview(welcomeBackLbl)
        NSLayoutConstraint.activate([
            welcomeBackLbl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 3),
            welcomeBackLbl.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
        view.addSubview(setUpButton)
        NSLayoutConstraint.activate([
            setUpButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 3),
            setUpButton.trailingAnchor.constraint(equalTo: view.trailingAnchor , constant: -28),
            setUpButton.widthAnchor.constraint(equalToConstant: 24),
            setUpButton.heightAnchor.constraint(equalToConstant: 24),
        ])
        view.addSubview(amountMoneyLbl)
        NSLayoutConstraint.activate([
            amountMoneyLbl.topAnchor.constraint(equalTo: welcomeBackLbl.bottomAnchor, constant: 24),
            amountMoneyLbl.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
        view.addSubview(dollorBtn)
        NSLayoutConstraint.activate([
            dollorBtn.topAnchor.constraint(equalTo: amountMoneyLbl.bottomAnchor, constant: 20),
            dollorBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 42),
            dollorBtn.heightAnchor.constraint(equalToConstant: 73),
            dollorBtn.widthAnchor.constraint(equalToConstant: 73),
        ])
        view.addSubview(euroBtn)
        NSLayoutConstraint.activate([
            euroBtn.topAnchor.constraint(equalTo: amountMoneyLbl.bottomAnchor, constant: 20),
            euroBtn.leadingAnchor.constraint(equalTo: dollorBtn.trailingAnchor, constant: 33),
            euroBtn.heightAnchor.constraint(equalToConstant: 73),
            euroBtn.widthAnchor.constraint(equalToConstant: 73),
        ])
        view.addSubview(fountBtn)
        NSLayoutConstraint.activate([
            fountBtn.topAnchor.constraint(equalTo: amountMoneyLbl.bottomAnchor, constant: 20),
            fountBtn.leadingAnchor.constraint(equalTo: euroBtn.trailingAnchor, constant: 33),
            fountBtn.heightAnchor.constraint(equalToConstant: 73),
            fountBtn.widthAnchor.constraint(equalToConstant: 73),
        ])
        
        view.addSubview(recentTransactionlbl)
        NSLayoutConstraint.activate([
            recentTransactionlbl.topAnchor.constraint(equalTo: dollorBtn.bottomAnchor, constant: 52),
            recentTransactionlbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
        ])
        view.addSubview(MoreButton)
        NSLayoutConstraint.activate([
            MoreButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -33),
            MoreButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            MoreButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            
        ])
        view.addSubview(recentTransactionTable)
        NSLayoutConstraint.activate([
            recentTransactionTable.topAnchor.constraint(equalTo: recentTransactionlbl.bottomAnchor, constant: 20),
            recentTransactionTable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            recentTransactionTable.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            recentTransactionTable.bottomAnchor.constraint(equalTo: MoreButton.topAnchor, constant: -33),
        ])
    }
    
    //MARK: -objc func-
    @objc func settingTapped(_ sender: UIButton) {
        let vc = SettingViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func dollorBtnTapped(_ sender: UIButton) {
        sender.applyButtonGradiant(color: [])
        sender.backgroundColor = UIColor(red: 0.851, green: 0.851, blue: 0.918, alpha: 1)
    }
    
    @objc func euroBtnTapped(_ sender: UIButton) {
        
    }
    
    @objc func fountBtnTapped(_ sednder: UIButton) {
        
    }
    
    @objc func moreButtonTapped(_ sender: UIButton) {
        
    }
}

//MARK: -Extensions-
extension HomeViewController: UITableViewDelegate {
    
}

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! RecentTransactionTableViewCell
        cell.contentView.frame.inset(by: UIEdgeInsets(top: 5, left: 0, bottom: 5, right: 0))
        return cell
    }
}
