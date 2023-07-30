//
//  ErrorViewController.swift
//  EuroExchange
//
//  Created by Димаш Алтынбек on 30.07.2023.
//

import Foundation
import UIKit

class ErrorViewController: UIViewController {
    //MARK: -Variables-
    let img: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "error")
        img.contentMode = .scaleAspectFit
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    let opsLbl: UILabel = {
        let lbl = UILabel()
        lbl.text = "Oups!"
        lbl.font = UIFont(name: "PlusJakartaSans-Bold", size: 40)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let fixLbl: UILabel = {
        let lbl = UILabel()
        lbl.text = "We trying to fix this"
        lbl.font = UIFont(name: "PlusJakartaSans-Regular", size: 20)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    //MARK: -LifeCycle-
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpVews()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let gradiant = UIImage.gradientImage(bounds: opsLbl.bounds, colors: [UIColor.textBlue, UIColor.textBlueSecound])
        opsLbl.textColor = UIColor(patternImage: gradiant)
    }
    
    //MARK: -Functions-
    private func setUpVews() {
        view.backgroundColor = .white
        navigationController?.isNavigationBarHidden = true
        view.addSubview(img)
        NSLayoutConstraint.activate([
            img.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            img.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            img.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
        ])
        view.addSubview(opsLbl)
        NSLayoutConstraint.activate([
            opsLbl.topAnchor.constraint(equalTo: img.bottomAnchor, constant: 30),
            opsLbl.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        view.addSubview(fixLbl)
        NSLayoutConstraint.activate([
            fixLbl.topAnchor.constraint(equalTo: opsLbl.bottomAnchor, constant: 10),
            fixLbl.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}
