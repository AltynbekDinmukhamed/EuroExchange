//
//  CreateAccountViewController.swift
//  EuroExchange
//
//  Created by Димаш Алтынбек on 16.07.2023.
//

import Foundation
import UIKit

class CreateAccountViewController: UIViewController {
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
    
    lazy var logInButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Log in", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.layer.cornerRadius = 10
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action: #selector(loginBtnTapped), for: .touchUpInside)
        btn.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.33)
        return btn
    }()
    
    lazy var createAccountButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Create account", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.layer.cornerRadius = 10
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action: #selector(createButtonTapped), for: .touchUpInside)
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
        logInButton.applyButtonGradiant(color: [UIColor.redFirst, UIColor.redSecound])
        createAccountButton.applyButtonGradiant(color: [UIColor.blueFirst, UIColor.blueSecound])
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
        view.addSubview(createAccountButton)
        view.addSubview(logInButton)
        NSLayoutConstraint.activate([
            createAccountButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -70),
            createAccountButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            createAccountButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            createAccountButton.heightAnchor.constraint(equalToConstant: 50),
            
            logInButton.bottomAnchor.constraint(equalTo: createAccountButton.topAnchor, constant: -10),
            logInButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            logInButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            logInButton.heightAnchor.constraint(equalToConstant: 50),
        ])
        
        
    }
    
    @objc private func createButtonTapped(_ sender: UIButton) {
        let vc = RegistrationController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc private func loginBtnTapped(_ sender: UIButton) {
        let vc = EnterLoginViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}
