//
//  EnterLoginViewController.swift
//  EuroExchange
//
//  Created by Димаш Алтынбек on 05.09.2023.
//

import Foundation
import UIKit

class EnterLoginViewController: UIViewController {
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
        img.image = UIImage(named: "logoClear")
        img.contentMode = .scaleAspectFill
        img.clipsToBounds = true
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    let inputStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 15
        stack.distribution = .fillEqually
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    let loginInput: UITextField = {
        let txt = UITextField()
        txt.attributedPlaceholder = NSAttributedString(string: "Enter login", attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 0.247, green: 0.255, blue: 0.58, alpha: 0.63), .font: UIFont(name: "PlusJakartaSans-SemiBold", size: 14)!])
        txt.font = UIFont(name: "PlusJakartaSans-SemiBold", size: 14)
        txt.layer.cornerRadius = 10
        txt.layer.borderWidth = 3
        txt.layer.borderColor = UIColor(red: 0.212, green: 0.188, blue: 0.384, alpha: 0.2).cgColor
        txt.textColor = UIColor(red: 0.247, green: 0.255, blue: 0.58, alpha: 0.63)
        txt.autocorrectionType = UITextAutocorrectionType.no
        txt.keyboardType = UIKeyboardType.default
        txt.returnKeyType = UIReturnKeyType.done
        txt.clearButtonMode = UITextField.ViewMode.whileEditing
        txt.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        txt.translatesAutoresizingMaskIntoConstraints = false
        txt.textAlignment = .center
        txt.autocapitalizationType = .none
        return txt
    }()
    
    let passwordInput: UITextField = {
        let txt = UITextField()
        txt.attributedPlaceholder = NSAttributedString(string: "Enter Password", attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 0.247, green: 0.255, blue: 0.58, alpha: 0.63), .font: UIFont(name: "PlusJakartaSans-SemiBold", size: 14)!])
        txt.font = UIFont(name: "PlusJakartaSans-SemiBold", size: 14)
        txt.layer.cornerRadius = 10
        txt.layer.borderWidth = 3
        txt.layer.borderColor = UIColor(red: 0.212, green: 0.188, blue: 0.384, alpha: 0.2).cgColor
        txt.textColor = UIColor(red: 0.247, green: 0.255, blue: 0.58, alpha: 0.63)
        txt.autocorrectionType = UITextAutocorrectionType.no
        txt.keyboardType = UIKeyboardType.default
        txt.returnKeyType = UIReturnKeyType.done
        txt.clearButtonMode = UITextField.ViewMode.whileEditing
        txt.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        txt.translatesAutoresizingMaskIntoConstraints = false
        txt.textAlignment = .center
        txt.autocapitalizationType = .none
        return txt
    }()
    
    lazy var loginButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Log in", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.layer.cornerRadius = 10
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        btn.backgroundColor = .systemOrange
        return btn
    }()
    
    lazy var registerAccound: UIButton = {
        let btn = UIButton()
        btn.setTitle("Register", for: .normal)
        btn.setTitleColor(.systemBlue, for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action: #selector(registerTapped), for: .touchUpInside)
        return btn
    }()
    
    var conUser: User? = nil
    
    //MARK: -LifeCycle-
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        loginButton.applyButtonGradiant(color: [UIColor.redFirst, UIColor.redSecound])
    }
    //MARK: -Fucntions-
    private func setUpViews() {
        view.backgroundColor = .white
        navigationController?.isNavigationBarHidden = true
        view.addSubview(backgroundImage)
        NSLayoutConstraint.activate([
            backgroundImage.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
        //adding logo image
        view.addSubview(logoImage)
        NSLayoutConstraint.activate([
            logoImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            logoImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -63),
            logoImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 63),
            //logoImage.widthAnchor.constraint(equalToConstant: view.frame.width / 2),
        ])
        
        view.addSubview(inputStack)
        inputStack.addArrangedSubview(loginInput)
        inputStack.addArrangedSubview(passwordInput)
        NSLayoutConstraint.activate([
            inputStack.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 100),
            inputStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            inputStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            
            loginInput.heightAnchor.constraint(equalToConstant: 55),
            passwordInput.heightAnchor.constraint(equalToConstant: 55),
        ])
        
        view.addSubview(loginButton)
        NSLayoutConstraint.activate([
            loginButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -70),
            loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            loginButton.heightAnchor.constraint(equalToConstant: 50),
        ])
        view.addSubview(registerAccound)
        NSLayoutConstraint.activate([
            registerAccound.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 5),
            registerAccound.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
    @objc func loginButtonTapped(_ sender: UIButton) {
        guard let userEmail = loginInput.text else { return }
        guard let userPassword = passwordInput.text else { return }
        
        let user = User(login: userEmail, password: userPassword)
        conUser = user
        
        
        ServerSession.shared.authenticateUser(user: conUser!) { res in
            switch res {
            case .success:
                DispatchQueue.main.async {
                    self.navigationController?.pushViewController(MainToolBarViewController(), animated: true)
                }
            case .failure(let error):
                print("Error while login: \(error)")
            }
        }
    }
    
    @objc func registerTapped(_ sender: UIButton) {
        let vc = EnterRegistrationViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}
