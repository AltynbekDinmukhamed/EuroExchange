//
//  PasswordChangedViewController.swift
//  EuroExchange
//
//  Created by Димаш Алтынбек on 16.07.2023.
//

import Foundation
import UIKit

class PasswordChangedViewController: UIViewController {
    //MARK: -variable-
    let backgroundImage: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "buldingWithTree")
        img.contentMode = .scaleToFill
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    let passwordChangedLabel: UILabel = {
        let lbl = UILabel()
        lbl.text = "Password changed successfully"
        lbl.font = UIFont(name: "PlusJakartaSans-ExtraBold", size: 32)
        lbl.numberOfLines = 0
        lbl.lineBreakMode = .byWordWrapping
        lbl.textAlignment = .center
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let reputationLabel: UILabel = {
        let lbl = UILabel()
        lbl.text = "It takes 20 years to build a reputation and five minutes to ruin it"
        lbl.textColor = UIColor(red: 0.247, green: 0.255, blue: 0.58, alpha: 0.63)
        lbl.font = UIFont(name: "PlusJakartaSans-SemiBoldItalic", size: 16)
        lbl.numberOfLines = 0
        lbl.lineBreakMode = .byWordWrapping
        lbl.textAlignment = .center
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let buffetLabel: UILabel = {
        let lbl = UILabel()
        lbl.text = "Warren Buffett"
        lbl.textColor = UIColor(red: 0.247, green: 0.255, blue: 0.58, alpha: 0.63)
        lbl.font = UIFont(name: "PlusJakartaSans-SemiBoldItalic", size: 14)
        lbl.numberOfLines = 0
        lbl.lineBreakMode = .byWordWrapping
        lbl.textAlignment = .center
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    lazy var continueButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Next ->", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.layer.cornerRadius = 10
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action: #selector(continueButtonTapped), for: .touchUpInside)
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
        continueButton.applyButtonGradiant(color: [UIColor(red: 0.779, green: 0.341, blue: 0.353, alpha: 1).cgColor, UIColor(red: 0.608, green: 0.165, blue: 0.19, alpha: 1).cgColor])
        //GradiantToLabel
        let gradient = UIImage.gradientImage(bounds: passwordChangedLabel.bounds, colors: [UIColor.textBlue, UIColor.textBlueSecound])
        passwordChangedLabel.textColor = UIColor(patternImage: gradient)
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
        
        view.addSubview(passwordChangedLabel)
        NSLayoutConstraint.activate([
            passwordChangedLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80),
            passwordChangedLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            passwordChangedLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
        
        view.addSubview(reputationLabel)
        NSLayoutConstraint.activate([
            reputationLabel.topAnchor.constraint(equalTo: passwordChangedLabel.bottomAnchor, constant: 30),
            reputationLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            reputationLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
        ])
        
        view.addSubview(buffetLabel)
        NSLayoutConstraint.activate([
            buffetLabel.topAnchor.constraint(equalTo: reputationLabel.bottomAnchor, constant: 10),
            buffetLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        //adding buttons
        view.addSubview(continueButton)
        NSLayoutConstraint.activate([
            continueButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -70),
            continueButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            continueButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            continueButton.heightAnchor.constraint(equalToConstant: 50),
        ])
    }

    //MARK: -Functins-
    @objc private func continueButtonTapped(_ sender: UIButton) {
        let vc = CreateAccountViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}
