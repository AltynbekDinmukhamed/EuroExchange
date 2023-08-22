//
//  PinCodeViewController.swift
//  EuroExchange
//
//  Created by Димаш Алтынбек on 16.08.2023.
//

import Foundation
import UIKit

class PinCodeViewController: UIViewController, openVC {

    
    //MARK: -Views-
    let logoImage: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "logo")
        img.contentMode = .scaleAspectFit
        img.clipsToBounds = true
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    let starStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.distribution = .equalSpacing
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    let firstStartText: UILabel = {
        let lbl = UILabel()
        lbl.text = "*"
        lbl.textColor = .textBlue
        lbl.font = UIFont(name: "PlusJakartaSans-Bold", size: 48)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let secoundStartText: UILabel = {
        let lbl = UILabel()
        lbl.text = "*"
        lbl.textColor = .textBlue
        lbl.font = UIFont(name: "PlusJakartaSans-Bold", size: 48)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let thirdStartText: UILabel = {
        let lbl = UILabel()
        lbl.text = "*"
        lbl.textColor = .textBlue
        lbl.font = UIFont(name: "PlusJakartaSans-Bold", size: 48)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let fourStartText: UILabel = {
        let lbl = UILabel()
        lbl.text = "*"
        lbl.textColor = .textBlue
        lbl.font = UIFont(name: "PlusJakartaSans-Bold", size: 48)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    //MARK: -ButtonStack-
    let pinCode: pinCodeView = {
        let view = pinCodeView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    //MARK: -Variables
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
        pinCode.delegate = self
    }
    //MARK: -Functions-
    private func setUpViews(){
        navigationController?.isNavigationBarHidden = true
        view.backgroundColor = .white
        view.addSubview(logoImage)
        NSLayoutConstraint.activate([
            logoImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 125),
            logoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImage.widthAnchor.constraint(equalToConstant: 260),
            logoImage.heightAnchor.constraint(equalToConstant: 40)
        ])
        view.addSubview(starStack)
        NSLayoutConstraint.activate([
            starStack.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 97),
            starStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 94),
            starStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -94),
            starStack.heightAnchor.constraint(equalToConstant: 72),
        ])
        starStack.addArrangedSubview(firstStartText)
        starStack.addArrangedSubview(secoundStartText)
        starStack.addArrangedSubview(thirdStartText)
        starStack.addArrangedSubview(fourStartText)
        
        //MARK: main button stack
        view.addSubview(pinCode)
        NSLayoutConstraint.activate([
            pinCode.topAnchor.constraint(equalTo: starStack.bottomAnchor, constant: 21),
            pinCode.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 43),
            pinCode.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -69),
            pinCode.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -43),
        ])
    }
    
    func openVC(vc: UIViewController) {
        navigationController?.pushViewController(vc, animated: true)
    }
}
