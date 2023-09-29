//
//  File.swift
//  EuroExchange
//
//  Created by Димаш Алтынбек on 05.09.2023.
//

import Foundation
import UIKit

class EnterRegistrationViewController: UIViewController {
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
    
    let confirmPasswordInput: UITextField = {
        let txt = UITextField()
        txt.attributedPlaceholder = NSAttributedString(string: "Confirm Password", attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 0.247, green: 0.255, blue: 0.58, alpha: 0.63), .font: UIFont(name: "PlusJakartaSans-SemiBold", size: 14)!])
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
    
    lazy var registerButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Register", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.layer.cornerRadius = 10
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action: #selector(registerButtonTapped), for: .touchUpInside)
        btn.backgroundColor = .systemOrange
        return btn
    }()
    
    lazy var haveAccound: UIButton = {
        let btn = UIButton()
        btn.setTitle("I already have an account...", for: .normal)
        btn.setTitleColor(.systemBlue, for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action: #selector(haveAccountTapped), for: .touchUpInside)
        return btn
    }()
    
    var ReigUser: User? = nil
    
    //MARK: -LifeCycle-
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        registerButton.applyButtonGradiant(color: [UIColor.redFirst, UIColor.redSecound])
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
        inputStack.addArrangedSubview(confirmPasswordInput)
        NSLayoutConstraint.activate([
            inputStack.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 100),
            inputStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            inputStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            
            loginInput.heightAnchor.constraint(equalToConstant: 55),
            passwordInput.heightAnchor.constraint(equalToConstant: 55),
            confirmPasswordInput.heightAnchor.constraint(equalToConstant: 55),
        ])
        
        view.addSubview(registerButton)
        NSLayoutConstraint.activate([
            registerButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -70),
            registerButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            registerButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            registerButton.heightAnchor.constraint(equalToConstant: 50),
        ])
        view.addSubview(haveAccound)
        NSLayoutConstraint.activate([
            haveAccound.topAnchor.constraint(equalTo: registerButton.bottomAnchor, constant: 5),
            haveAccound.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
    
    func displayMyAlertMessage(userMessage: String) {
        let myAlert = UIAlertController(title: "Allert", message: userMessage, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        myAlert.addAction(okAction)
        self.present(myAlert, animated: true)
    }
    //MARK: -Objc functions-
    @objc func registerButtonTapped(_ sender: UIButton) {
        guard let userEmail = loginInput.text else { return }
        guard let userPassword = passwordInput.text else { return }
        guard let userRepeatPassword = confirmPasswordInput.text else { return }
        
        //check for empty fields
        if userEmail.isEmpty || userPassword.isEmpty {
            displayMyAlertMessage(userMessage: "All fields are required")
            return
        }
        
        //check if password match
        if userPassword != userRepeatPassword {
            //display alert message
            displayMyAlertMessage(userMessage: "Password are not matched")
            return
        }
        
        let newUser = User(login: userEmail, password: userRepeatPassword)
        ReigUser = newUser
        
        //store data
//        UserDefaults.standard.set(userEmail, forKey: "userEmail")
//        UserDefaults.standard.set(userPassword, forKey: "userPassword")
//        UserDefaults.standard.synchronize()

        //display alert message
//        let myAlert = UIAlertController(title: "Alert", message: "Registration is succsesfull. Thank you!", preferredStyle: .alert)
//        let okAction = UIAlertAction(title: "OK", style: .default) { action in
//            self.navigationController?.pushViewController(MainToolBarViewController(), animated: true)
//        }
//        myAlert.addAction(okAction)
//        present(myAlert, animated: true)
        
        
        registerUser()
        
    }
    
    @objc func haveAccountTapped(_ sender: UIButton) {
        let vc = EnterLoginViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    // MARK: -functions-
    private func registerUser() {
        let url = URL(string: "https://api-test-123.exch.tech/api/v1/login")
        guard let url else { return }
        var request = URLRequest(url: url)
        
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        do {
            let json = try JSONEncoder().encode(ReigUser)
            request.httpBody = json
            print("ENCODING: \(String(describing: ReigUser))")
            print("REQUEST: ", request)
            print("JSON: ", json)
        }catch {
            print("Catch error: \(error)")
        }
        
        
        // Session
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            DispatchQueue.main.async {
                if let error = error {
                    print("Erorr: \(error)")
                    return
                }

                if let httpResponse = response as? HTTPURLResponse {
                    print("Code Status: \(httpResponse.description)")

                    guard let data = data else { return }
                    do {
                        //let user = try JSONDecoder().decode([LoginAuthMessage]., from: data)
                        //print("fetching data", user)
                        
                    }catch {
                        print("Error \(error.localizedDescription)")

                    }
                }
            }
        }
        task.resume()
    }
}

extension EnterLoginViewController {
    
    
    
}
