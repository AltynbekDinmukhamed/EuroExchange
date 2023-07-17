//
//  PassViewController.swift
//  EuroExchange
//
//  Created by Димаш Алтынбек on 16.07.2023.
//

import Foundation
import UIKit

class PassViewController: UIViewController {
    //MARK: -Variables-
    let backgroundImage: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "welcomeBackground")
        img.contentMode = .scaleAspectFill
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
    
    lazy var newPassButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("New pass", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.layer.cornerRadius = 10
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action: #selector(accIDButtonTapped), for: .touchUpInside)
        //btn.backgroundColor = .brown
        return btn
    }()
    
    lazy var reEnterButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Re enter new pass", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.layer.cornerRadius = 10
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action: #selector(towFAbuttonTapped), for: .touchUpInside)
        btn.backgroundColor = .systemPurple
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
    
    //MARK: -View Cycle-
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpViews()
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        newPassButton.applyButtonGradiant(color: [UIColor.blueFirst, UIColor.blueSecound])
        reEnterButton.applyButtonGradiant(color: [UIColor.blueFirst, UIColor.blueSecound])
        nextButton.applyButtonGradiant(color: [UIColor.redFirst, UIColor.redSecound])
        
        setShadowToLogo()
    }
    
    //MARK: -Functions-
    private func setUpViews() {
        navigationController?.navigationBar.isHidden = true
        view.backgroundColor = .white
        view.addSubview(backgroundImage)
        NSLayoutConstraint.activate([
            backgroundImage.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
        //adding logog
        view.addSubview(logoImage)
        NSLayoutConstraint.activate([
            logoImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 177),
            logoImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -63),
            logoImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 63),
            //logoImage.widthAnchor.constraint(equalToConstant: view.frame.width / 2),
        ])
        //adding buttons
        view.addSubview(nextButton)
        view.addSubview(reEnterButton)
        view.addSubview(newPassButton)
        NSLayoutConstraint.activate([
            nextButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -70),
            nextButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            nextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            nextButton.heightAnchor.constraint(equalToConstant: 50),
            
            reEnterButton.bottomAnchor.constraint(equalTo: nextButton.topAnchor, constant: -50),
            reEnterButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            reEnterButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            reEnterButton.heightAnchor.constraint(equalToConstant: 50),
            
            newPassButton.bottomAnchor.constraint(equalTo: reEnterButton.topAnchor, constant: -20),
            newPassButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            newPassButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            newPassButton.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
    
    //adding shadow to logo image
    private func setShadowToLogo() {
        let shadowPaht = UIBezierPath(roundedRect: logoImage.bounds, cornerRadius: 24)
        let layer = CALayer()
        layer.shadowPath = shadowPaht.cgPath
        layer.shadowColor = UIColor(cgColor: CGColor(red: 0, green: 0, blue: 0, alpha: 0.25)).cgColor
        layer.shadowOpacity = 1
        layer.shadowRadius = 4
        layer.shadowOffset = CGSize(width: 0, height: 4)
        layer.bounds = logoImage.bounds
        layer.position = logoImage.center
        logoImage.layer.addSublayer(layer)
    }
    
    //objc functions
    @objc func accIDButtonTapped(_ sender: UIButton) {
        
    }
    
    @objc func towFAbuttonTapped(_ sender: UIButton) {
        
    }
    
    @objc func nextButtonTapped(_ sender: UIButton) {
        
    }
}
