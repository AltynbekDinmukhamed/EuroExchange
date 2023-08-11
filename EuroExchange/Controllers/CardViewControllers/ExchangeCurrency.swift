//
//  ExchangeCurrency.swift
//  EuroExchange
//
//  Created by Димаш Алтынбек on 06.08.2023.
//

import Foundation
import UIKit

class ExchangeCurrency: UIViewController {
    //MARK: -Variables-
    let exchangeCurrency: UILabel = {
        let lbl = UILabel()
        lbl.text = "Exchange Currency"
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
    
    //let first exchangeView
    let exchangeView: ExchangeCurrencyView = {
        let exc = ExchangeCurrencyView()
        exc.clipsToBounds = true
        exc.layer.cornerRadius = 10
        exc.translatesAutoresizingMaskIntoConstraints = false
        return exc
    }()
    
    lazy var changeExchangeButton: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named: "exchange"), for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action: #selector(changeExchangeButtonTapped), for: .touchUpInside)
        return btn
    }()
    
    let secoundExchangeView: ExchangeCurrencyView = {
        let exc = ExchangeCurrencyView()
        exc.clipsToBounds = true
        exc.layer.cornerRadius = 10
        exc.amount.text = "80.000"
        exc.dolorImage.image = UIImage(named: "rub")
        exc.translatesAutoresizingMaskIntoConstraints = false
        return exc
    }()
    
    let feelbl: UILabel = {
        let lbl = UILabel()
        lbl.text = "Fee"
        lbl.textColor = UIColor(red: 0.078, green: 0.071, blue: 0.118, alpha: 1)
        lbl.font = UIFont(name: "PlusJakartaSans-SemiBold", size: 20)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    //MARK: -LifeCycle-
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
    }
    
    override func viewDidLayoutSubviews() {
        exchangeView.applyCardGradiant(color:
                                        [
                                            UIColor(red: 0.133, green: 0.149, blue: 0.341, alpha: 1).cgColor,
                                            UIColor(red: 0.247, green: 0.255, blue: 0.58, alpha: 1).cgColor
                                        ])
        secoundExchangeView.applyCardGradiant(color:
                                                [
                                                    UIColor(red: 0.575, green: 0.232, blue: 0.252, alpha: 1).cgColor,
                                                    UIColor(red: 0.779, green: 0.292, blue: 0.305, alpha: 1).cgColor
                                                ])
    }
    
    //MARK: -Functions-
    private func setUpViews() {
        navigationController?.isNavigationBarHidden = true
        view.backgroundColor = .white
        view.addSubview(exchangeCurrency)
        NSLayoutConstraint.activate([
            exchangeCurrency.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 23),
            exchangeCurrency.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
        view.addSubview(setUpButton)
        NSLayoutConstraint.activate([
            setUpButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 23),
            setUpButton.trailingAnchor.constraint(equalTo: view.trailingAnchor , constant: -28),
            setUpButton.widthAnchor.constraint(equalToConstant: 24),
            setUpButton.heightAnchor.constraint(equalToConstant: 24),
        ])
        view.addSubview(exchangeView)
        NSLayoutConstraint.activate([
            exchangeView.topAnchor.constraint(equalTo: exchangeCurrency.bottomAnchor, constant: 47),
            exchangeView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 28),
            exchangeView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -28),
            exchangeView.heightAnchor.constraint(equalToConstant: 85),
        ])
        view.addSubview(changeExchangeButton)
        NSLayoutConstraint.activate([
            changeExchangeButton.topAnchor.constraint(equalTo: exchangeView.bottomAnchor, constant: 20),
            changeExchangeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            changeExchangeButton.widthAnchor.constraint(equalToConstant: 53),
            changeExchangeButton.heightAnchor.constraint(equalToConstant: 53),
        ])
        view.addSubview(secoundExchangeView)
        NSLayoutConstraint.activate([
            secoundExchangeView.topAnchor.constraint(equalTo: changeExchangeButton.bottomAnchor, constant: 20),
            secoundExchangeView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 28),
            secoundExchangeView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant:  -28),
            secoundExchangeView.heightAnchor.constraint(equalToConstant: 85),
        ])
        view.addSubview(feelbl)
        NSLayoutConstraint.activate([
            feelbl.topAnchor.constraint(equalTo: secoundExchangeView.bottomAnchor, constant: 27),
            feelbl.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
    
    //MARK: -objc funcitons-
    @objc func settingTapped(_ sender: UIButton) {
        let vc = SettingViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func changeExchangeButtonTapped(_ sender: UIButton) {
        
    }
}
