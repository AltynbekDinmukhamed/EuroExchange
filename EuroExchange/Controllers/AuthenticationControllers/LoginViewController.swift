//
//  LoginViewController.swift
//  EuroExchange
//
//  Created by Димаш Алтынбек on 16.07.2023.
//

import Foundation
import UIKit

class LoginViewContorller: UIViewController {
    //MARK: -variable-
    let backgroundImage: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "buildingLogo")
        img.contentMode = .scaleAspectFit
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    let logoImage: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "logo")
        img.contentMode = .scaleAspectFit
        img.clipsToBounds = true
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    lazy var accIDButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("AccID or E-mail", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.layer.cornerRadius = 10
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action: #selector(accIDButtonTapped), for: .touchUpInside)
        btn.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.33)
        return btn
    }()
    
    lazy var passwordButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("2FA", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.layer.cornerRadius = 10
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action: #selector(passwordButtonTapped), for: .touchUpInside)
        btn.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.33)
        return btn
    }()
    
    lazy var nextButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Next ->", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.layer.cornerRadius = 10
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
        btn.backgroundColor = .systemOrange
        return btn
    }()
    
    
    //MARK: -LifeCycle-
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        nextButton.applyButtonGradiant(color: [UIColor(red: 0.779, green: 0.341, blue: 0.353, alpha: 1).cgColor, UIColor(red: 0.608, green: 0.165, blue: 0.19, alpha: 1).cgColor])
    }
    
    //MARK: -Functinos-
    private func setUpViews() {
        navigationController?.navigationBar.isHidden = true
        view.backgroundColor = .white
        view.addSubview(backgroundImage)
        NSLayoutConstraint.activate([
            
            backgroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
        
        view.addSubview(logoImage)
        NSLayoutConstraint.activate([
            logoImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 177),
            logoImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -63),
            logoImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 63),
            //logoImage.widthAnchor.constraint(equalToConstant: view.frame.width / 2),
        ])
        //adding buttons
        view.addSubview(nextButton)
        view.addSubview(passwordButton)
        view.addSubview(accIDButton)
        NSLayoutConstraint.activate([
            nextButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -70),
            nextButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            nextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            nextButton.heightAnchor.constraint(equalToConstant: 50),
            
            passwordButton.bottomAnchor.constraint(equalTo: nextButton.topAnchor, constant: -50),
            passwordButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            passwordButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            passwordButton.heightAnchor.constraint(equalToConstant: 50),
            
            accIDButton.bottomAnchor.constraint(equalTo: passwordButton.topAnchor, constant: -20),
            accIDButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            accIDButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            accIDButton.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
    
    @objc private func accIDButtonTapped(_ sender: UIButton) {
        
    }
    
    @objc private func passwordButtonTapped(_ sender: UIButton) {
        
    }
    
    @objc private func nextButtonTapped(_ sender: UIButton) {
        let vc = LoginAndEmailViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}
