//
//  AddNewCardViewController.swift
//  EuroExchange
//
//  Created by Димаш Алтынбек on 30.07.2023.
//

import Foundation
import UIKit

class AddNewCardViewController: UIViewController {
    //MARK: -Variables-
    let addNewCard: UILabel = {
        let lbl = UILabel()
        lbl.text = "Add new card"
        lbl.font = UIFont(name: "PlusJakartaSans-SemiBold", size: 20)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let settingImg: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "settings")
        img.contentMode = .scaleAspectFit
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    let cardViews: CardView = {
        let crd = CardView()
        crd.translatesAutoresizingMaskIntoConstraints = false
        return crd
    }()
    
    let cardNameLbl: UILabel = {
        let lbl = UILabel()
        lbl.text = "Card Name"
        lbl.textColor = UIColor(red: 0.212, green: 0.188, blue: 0.384, alpha: 1)
        lbl.font = UIFont(name: "PlusJakartaSans-SemiBold", size: 16)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let walletXyzTextField: UITextField = {
        let lbl = UITextField()
        lbl.textColor = UIColor(red: 0.247, green: 0.255, blue: 0.58, alpha: 1)
        lbl.layer.cornerRadius = 10
        lbl.layer.borderWidth = 3
        lbl.layer.borderColor = UIColor(red: 0.212, green: 0.188, blue: 0.384, alpha: 0.2).cgColor
        lbl.attributedPlaceholder = NSAttributedString(string: "Wallet XYZ", attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 0.247, green: 0.255, blue: 0.58, alpha: 0.63), NSAttributedString.Key.font: UIFont(name: "Poppins-Regular", size: 14)!])
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let cardNumberLbl: UILabel = {
        let lbl = UILabel()
        lbl.text = "Card Number"
        lbl.textColor = UIColor(red: 0.212, green: 0.188, blue: 0.384, alpha: 1)
        lbl.font = UIFont(name: "PlusJakartaSans-SemiBold", size: 16)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let cardNumberTextField: UITextField = {
        let lbl = UITextField()
        lbl.textColor = UIColor(red: 0.247, green: 0.255, blue: 0.58, alpha: 1)
        lbl.layer.cornerRadius = 10
        lbl.layer.borderWidth = 3
        lbl.layer.borderColor = UIColor(red: 0.212, green: 0.188, blue: 0.384, alpha: 0.2).cgColor
        lbl.attributedPlaceholder = NSAttributedString(string: "**** **** **** ****", attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 0.247, green: 0.255, blue: 0.58, alpha: 0.63), NSAttributedString.Key.font: UIFont(name: "Poppins-Regular", size: 14)!])
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let dateTextField: UITextField = {
        let lbl = UITextField()
        lbl.textColor = UIColor(red: 0.247, green: 0.255, blue: 0.58, alpha: 1)
        lbl.textAlignment = .center
        lbl.layer.cornerRadius = 10
        lbl.layer.borderWidth = 3
        lbl.layer.borderColor = UIColor(red: 0.212, green: 0.188, blue: 0.384, alpha: 0.2).cgColor
        lbl.attributedPlaceholder = NSAttributedString(string: "**** **** **** ****", attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 0.247, green: 0.255, blue: 0.58, alpha: 0.63), NSAttributedString.Key.font: UIFont(name: "Poppins-Regular", size: 14)!])
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let cvvTextField: UITextField = {
        let lbl = UITextField()
        lbl.textColor = UIColor(red: 0.247, green: 0.255, blue: 0.58, alpha: 1)
        lbl.textAlignment = .center
        lbl.layer.cornerRadius = 10
        lbl.layer.borderWidth = 3
        lbl.layer.borderColor = UIColor(red: 0.212, green: 0.188, blue: 0.384, alpha: 0.2).cgColor
        lbl.attributedPlaceholder = NSAttributedString(string: "CVV", attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 0.247, green: 0.255, blue: 0.58, alpha: 0.63), NSAttributedString.Key.font: UIFont(name: "Poppins-Regular", size: 14)!])
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    lazy var saveButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Save", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.layer.cornerRadius = 10
        btn.addTarget(self, action: #selector(saveTapped), for: .touchUpInside)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    //MARK: -Life cycle-
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        cardViews.applyCardGradiant(color: [UIColor.blueSecound, UIColor.blueFirst])
        saveButton.applyButtonGradiant(color: [UIColor.blueSecound, UIColor.blueFirst])
    }
    //MARK: -Functions-
    private func setUpViews() {
        navigationController?.isNavigationBarHidden = true
        view.backgroundColor = .white
        view.addSubview(addNewCard)
        NSLayoutConstraint.activate([
            addNewCard.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 23),
            addNewCard.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
        view.addSubview(settingImg)
        NSLayoutConstraint.activate([
            settingImg.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 21),
            settingImg.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -28),
            settingImg.widthAnchor.constraint(equalToConstant: 24),
            settingImg.heightAnchor.constraint(equalToConstant: 24),
        ])
        view?.addSubview(cardViews)
        NSLayoutConstraint.activate([
            cardViews.topAnchor.constraint(equalTo: addNewCard.bottomAnchor, constant: 20),
            cardViews.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 28),
            cardViews.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -28),
            cardViews.heightAnchor.constraint(equalToConstant: 175),
        ])
        
        view.addSubview(cardNameLbl)
        NSLayoutConstraint.activate([
            cardNameLbl.topAnchor.constraint(equalTo: cardViews.bottomAnchor, constant: 46),
            cardNameLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 28),
        ])
        view.addSubview(walletXyzTextField)
        walletXyzTextField.addPaddingsToTextField()
        NSLayoutConstraint.activate([
            walletXyzTextField.topAnchor.constraint(equalTo: cardNameLbl.bottomAnchor, constant: 11),
            walletXyzTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 28),
            walletXyzTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -28),
            walletXyzTextField.heightAnchor.constraint(equalToConstant: 55),
        ])
        view.addSubview(cardNumberLbl)
        NSLayoutConstraint.activate([
            cardNumberLbl.topAnchor.constraint(equalTo: walletXyzTextField.bottomAnchor, constant: 21),
            cardNumberLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 28)
        ])
        view.addSubview(cardNumberTextField)
        cardNumberTextField.setMasterCardImage()
        NSLayoutConstraint.activate([
            cardNumberTextField.topAnchor.constraint(equalTo: cardNumberLbl.bottomAnchor, constant: 11),
            cardNumberTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 28),
            cardNumberTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -28),
            cardNumberTextField.heightAnchor.constraint(equalToConstant: 55),
        ])
        view.addSubview(dateTextField)
        view.addSubview(cvvTextField)
        NSLayoutConstraint.activate([
            dateTextField.topAnchor.constraint(equalTo: cardNumberTextField.bottomAnchor, constant: 22),
            dateTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 28),
            dateTextField.widthAnchor.constraint(equalToConstant: 150),
            dateTextField.heightAnchor.constraint(equalToConstant: 55),
            
            cvvTextField.topAnchor.constraint(equalTo: cardNumberTextField.bottomAnchor, constant: 22),
            cvvTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -28),
            cvvTextField.widthAnchor.constraint(equalToConstant: 150),
            cvvTextField.heightAnchor.constraint(equalToConstant: 55),
        ])
        view.addSubview(saveButton)
        NSLayoutConstraint.activate([
            saveButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
            saveButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 28),
            saveButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -28),
            saveButton.heightAnchor.constraint(equalToConstant: 41),
        ])
    }
    
    @objc func saveTapped(_ sender: UIButton) {
        
    }
}

extension UITextField {
    func addPaddingsToTextField() {
        let paddingViews = UIView.init(frame: CGRect(x: 0, y: 0, width: 20, height: 0))
        leftView = paddingViews
        leftViewMode = .always
        rightView = paddingViews
        rightViewMode = .always
    }
    func setMasterCardImage() {
        let paddingViews = UIView.init(frame: CGRect(x: 0, y: 0, width: 20, height: 0))
        leftView = paddingViews
        leftViewMode = .always
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 32, height: 20))
        imageView.image = UIImage(named: "masterCard")
        imageView.contentMode = .scaleAspectFit
        rightViewMode = .always
        rightView = imageView
    }
}
