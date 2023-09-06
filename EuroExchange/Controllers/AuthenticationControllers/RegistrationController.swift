//
//  RegistrationController.swift
//  EuroExchange
//
//  Created by Димаш Алтынбек on 14.07.2023.
//

import Foundation
import UIKit

class RegistrationController: UIViewController {
    //MARK: -Variable-
    
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
    
    let textInputStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 15
        stack.distribution = .fillEqually
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    let nameInput: UITextField = {
        let txt = UITextField()
        txt.attributedPlaceholder = NSAttributedString(string: "Name/last name", attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 0.247, green: 0.255, blue: 0.58, alpha: 0.63), .font: UIFont(name: "PlusJakartaSans-SemiBold", size: 14)!])
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
        return txt
    }()
    
    let dateBitrhInput: UITextField = {
        let txt = UITextField()
        txt.attributedPlaceholder = NSAttributedString(string: "Date of birth", attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 0.247, green: 0.255, blue: 0.58, alpha: 0.63), .font: UIFont(name: "PlusJakartaSans-SemiBold", size: 14)!])
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
        txt.textAlignment = .center
        txt.translatesAutoresizingMaskIntoConstraints = false
        return txt
    }()
    
    let countryInput: UITextField = {
        let txt = UITextField()
        txt.attributedPlaceholder = NSAttributedString(string: "Country", attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 0.247, green: 0.255, blue: 0.58, alpha: 0.63), .font: UIFont(name: "PlusJakartaSans-SemiBold", size: 14)!])
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
        txt.textAlignment = .center
        txt.translatesAutoresizingMaskIntoConstraints = false
        return txt
    }()
    
    let adressInput: UITextField = {
        let txt = UITextField()
        txt.attributedPlaceholder = NSAttributedString(string: "adress", attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 0.247, green: 0.255, blue: 0.58, alpha: 0.63), .font: UIFont(name: "PlusJakartaSans-SemiBold", size: 14)!])
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
        txt.textAlignment = .center
        txt.translatesAutoresizingMaskIntoConstraints = false
        return txt
    }()
    
    let phoneInput: UITextField = {
        let txt = UITextField()
        txt.attributedPlaceholder = NSAttributedString(string: "Phone", attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 0.247, green: 0.255, blue: 0.58, alpha: 0.63), .font: UIFont(name: "PlusJakartaSans-SemiBold", size: 14)!])
        txt.font = UIFont(name: "PlusJakartaSans-SemiBold", size: 14)
        txt.textColor = UIColor(red: 0.247, green: 0.255, blue: 0.58, alpha: 0.63)
        txt.layer.cornerRadius = 10
        txt.layer.borderWidth = 3
        txt.layer.borderColor = UIColor(red: 0.212, green: 0.188, blue: 0.384, alpha: 0.2).cgColor
        txt.autocorrectionType = UITextAutocorrectionType.no
        txt.keyboardType = UIKeyboardType.default
        txt.returnKeyType = UIReturnKeyType.done
        txt.clearButtonMode = UITextField.ViewMode.whileEditing
        txt.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        txt.textAlignment = .center
        txt.translatesAutoresizingMaskIntoConstraints = false
        return txt
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
        dateBitrhInput.delegate = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        nextButton.applyButtonGradiant(color: [UIColor.redFirst, UIColor.redSecound])
    }
    
    //MARK: -Funtions-
    private func setUpViews() {
        navigationController?.navigationBar.isHidden = true
        view.backgroundColor = .white

        //adding background
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
        //adding stack
        view.addSubview(textInputStack)
        textInputStack.addArrangedSubview(nameInput)
        textInputStack.addArrangedSubview(dateBitrhInput)
        textInputStack.addArrangedSubview(countryInput)
        textInputStack.addArrangedSubview(adressInput)
        textInputStack.addArrangedSubview(phoneInput)
        NSLayoutConstraint.activate([
            textInputStack.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 100),
            textInputStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            textInputStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            textInputStack.heightAnchor.constraint(equalToConstant: view.frame.size.height / 2.5),
            
            nameInput.heightAnchor.constraint(equalToConstant: 55),
            dateBitrhInput.heightAnchor.constraint(equalToConstant: 55),
            countryInput.heightAnchor.constraint(equalToConstant: 55),
            adressInput.heightAnchor.constraint(equalToConstant: 55),
            phoneInput.heightAnchor.constraint(equalToConstant: 55),
        ])
        view.addSubview(nextButton)
        NSLayoutConstraint.activate([
            nextButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -70),
            nextButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            nextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            nextButton.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
    
    //MARK: -objc functions-
    @objc func nextButtonTapped(_ sender: UIButton) {
        let vc = EnterRegistrationViewController()
        navigationController?.pushViewController(vc, animated: true)
        
    }
}

extension RegistrationController: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        openDatePicker()
    }
}

extension RegistrationController {
    private func openDatePicker() {
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .date
        datePicker.addTarget(self, action: #selector(datePickeHandler), for: .valueChanged)
        dateBitrhInput.inputView = datePicker
        
        let toolBar = UIToolbar()
        toolBar.translatesAutoresizingMaskIntoConstraints = false
        let canselButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(cancelButtonClick))
        let doneButton = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(doneButtonClick))
        let flexibleButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        toolBar.setItems([canselButton, doneButton, flexibleButton], animated: false)
        dateBitrhInput.inputAccessoryView = toolBar
        
        NSLayoutConstraint.activate([
            toolBar.widthAnchor.constraint(equalToConstant: view.frame.size.width),
            toolBar.heightAnchor.constraint(equalToConstant: 44),
        ])
    }
    
    @objc private func cancelButtonClick() {
        dateBitrhInput.resignFirstResponder()
    }
    
    @objc private func doneButtonClick() {
        if let datePicker = dateBitrhInput.inputView as? UIDatePicker {
            let dateFormatter = DateFormatter()
            dateFormatter.dateStyle = .medium
            dateBitrhInput.text = dateFormatter.string(from: datePicker.date)
            print(datePicker.date)
        }
        dateBitrhInput.resignFirstResponder()
    }
    
    @objc func datePickeHandler(_ sender: UIDatePicker) {
        print(sender.date)
    }
}
