//
//  SettingViewController.swift
//  EuroExchange
//
//  Created by Димаш Алтынбек on 10.08.2023.
//

import Foundation
import UIKit

class SettingViewController: UIViewController {
    //MARK: -Variable-
    let settingsLbl: UILabel = {
        let lbl = UILabel()
        lbl.text = "Settings"
        lbl.font = UIFont(name: "PlusJakartaSans-SemiBold", size: 20)
        lbl.textColor = UIColor(red: 0.078, green: 0.071, blue: 0.118, alpha: 1)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let stack: UIStackView = {
        let stack = UIStackView()
        stack.spacing = 23
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    let setting1: UIButton = {
        let btn = UIButton()
        btn.setTitle("Setting 1                                       ", for: .normal)
        btn.layer.cornerRadius = 10
        btn.layer.borderWidth = 3
        btn.layer.borderColor = UIColor(red: 0.247, green: 0.255, blue: 0.58, alpha: 0.2).cgColor
        btn.setImage(UIImage(systemName: "arrow.right"), for: .normal)
        btn.semanticContentAttribute = .forceRightToLeft
        btn.titleLabel?.font = UIFont(name: "PlusJakartaSans-Bold", size: 20)
        btn.setTitleColor(.textBlue, for: .normal)
        btn.titleLabel?.textAlignment = .justified
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    let setting2: UIButton = {
        let btn = UIButton()
        btn.setTitle("Setting 1                                       ", for: .normal)
        btn.layer.cornerRadius = 10
        btn.layer.borderWidth = 3
        btn.layer.borderColor = UIColor(red: 0.247, green: 0.255, blue: 0.58, alpha: 0.2).cgColor
        btn.setImage(UIImage(systemName: "arrow.right"), for: .normal)
        btn.semanticContentAttribute = .forceRightToLeft
        btn.titleLabel?.font = UIFont(name: "PlusJakartaSans-Bold", size: 20)
        btn.setTitleColor(.textBlue, for: .normal)
        btn.titleLabel?.textAlignment = .justified
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    let setting3: UIButton = {
        let btn = UIButton()
        btn.setTitle("Setting 1                                       ", for: .normal)
        btn.layer.cornerRadius = 10
        btn.layer.borderWidth = 3
        btn.layer.borderColor = UIColor(red: 0.247, green: 0.255, blue: 0.58, alpha: 0.2).cgColor
        btn.setImage(UIImage(systemName: "arrow.right"), for: .normal)
        btn.semanticContentAttribute = .forceRightToLeft
        btn.titleLabel?.font = UIFont(name: "PlusJakartaSans-Bold", size: 20)
        btn.setTitleColor(.textBlue, for: .normal)
        btn.titleLabel?.textAlignment = .justified
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    let setting4: UIButton = {
        let btn = UIButton()
        btn.setTitle("Setting 1                                       ", for: .normal)
        btn.layer.cornerRadius = 10
        btn.layer.borderWidth = 3
        btn.layer.borderColor = UIColor(red: 0.247, green: 0.255, blue: 0.58, alpha: 0.2).cgColor
        btn.setImage(UIImage(systemName: "arrow.right"), for: .normal)
        btn.semanticContentAttribute = .forceRightToLeft
        btn.titleLabel?.font = UIFont(name: "PlusJakartaSans-Bold", size: 20)
        btn.setTitleColor(.textBlue, for: .normal)
        btn.titleLabel?.textAlignment = .justified
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    lazy var setting5: UIButton = {
        let btn = UIButton()
        btn.setTitle("Log out                                       ", for: .normal)
        btn.layer.cornerRadius = 10
        btn.layer.borderWidth = 3
        btn.layer.borderColor = UIColor(red: 0.247, green: 0.255, blue: 0.58, alpha: 0.2).cgColor
        btn.setImage(UIImage(systemName: "arrow.right"), for: .normal)
        btn.semanticContentAttribute = .forceRightToLeft
        btn.titleLabel?.font = UIFont(name: "PlusJakartaSans-Bold", size: 20)
        btn.setTitleColor(.textBlue, for: .normal)
        btn.titleLabel?.textAlignment = .justified
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action: #selector(logOutTapped), for: .touchUpInside)
        return btn
    }()
    
    let leftView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let rightView: UIView = {
        let view = UIView()
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    //MARK: -Life Cycle-
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = false
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        leftView.applyCardGradiant(color: [UIColor.blueFirst, UIColor.blueSecound])
        rightView.applyCardGradiant(color: [UIColor.blueFirst, UIColor.blueSecound])
    }
    //MARK: -Functinos-
    private func setUpViews() {
        //navigationController?.isNavigationBarHidden = true
        view.backgroundColor = .white
        
        view.addSubview(settingsLbl)
        NSLayoutConstraint.activate([
            settingsLbl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 23),
            settingsLbl.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
        
        
        view.addSubview(leftView)
        view.addSubview(rightView)
        NSLayoutConstraint.activate([
            leftView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -72),
            leftView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 34),
            leftView.heightAnchor.constraint(equalToConstant: 60),
            leftView.widthAnchor.constraint(equalToConstant: 133),
            rightView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -72),
            rightView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -34),
            rightView.widthAnchor.constraint(equalToConstant: 133),
            rightView.heightAnchor.constraint(equalToConstant: 60),
        ])
        
        view.addSubview(stack)
        NSLayoutConstraint.activate([
            stack.topAnchor.constraint(equalTo: settingsLbl.bottomAnchor, constant: 59),
            stack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 34),
            stack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -34),
            stack.bottomAnchor.constraint(equalTo: leftView.topAnchor, constant: -58),
        ])
        stack.addArrangedSubview(setting1)
        stack.addArrangedSubview(setting2)
        stack.addArrangedSubview(setting3)
        stack.addArrangedSubview(setting4)
        stack.addArrangedSubview(setting5)
    }
    
    @objc func logOutTapped(_ sender: UIButton) {
        UserDefaults.standard.bool(forKey: "isUserLoggedIn")
        UserDefaults.standard.synchronize()
        
        navigationController?.pushViewController(CreateAccountViewController(), animated: true)
    }
}
