//
//  TermsAndConditionsViewController.swift
//  EuroExchange
//
//  Created by Димаш Алтынбек on 27.07.2023.
//

import Foundation
import UIKit

class TermsAndConditionsViewController: UIViewController {
    //MARK: -Variables-
    let termAndConditionsLabel: UILabel = {
        let lbl = UILabel()
        lbl.text = "Terms and conditions"
        lbl.font = UIFont(name: "PlusJakartaSans-ExtraBold", size: 32)
        lbl.numberOfLines = 0
        lbl.lineBreakMode = .byWordWrapping
        lbl.textAlignment = .center
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let rulesLbl: PaddingLabel = {
        let lbl = PaddingLabel()
        lbl.textColor = UIColor(red: 0.373, green: 0.376, blue: 0.508, alpha: 1)
        lbl.font = UIFont(name: "PlusJakartaSans-Medium", size: 13)
        lbl.numberOfLines = 0
        lbl.lineBreakMode = .byWordWrapping
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.19
        lbl.textAlignment = .justified
        lbl.attributedText = NSMutableAttributedString(string: "Worem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus. \n\nClass aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent auctor purus luctus enim egestas, ac scelerisque ante pulvinar. \n Curabitur tempor quis eros tempus lacinia. Nam bibendum pellentesque quam a convallis. Sed ut vulputate nisi. Integer in felis sed leo vestibulum venenatis. Suspendisse quis arcu sem. ", attributes: [NSAttributedString.Key.kern: -0.26, NSAttributedString.Key.paragraphStyle: paragraphStyle])
        
        lbl.layer.cornerRadius = 15
        lbl.layer.borderColor = UIColor(red: 0.247, green: 0.255, blue: 0.58, alpha: 0.2).cgColor
        lbl.layer.borderWidth = 3
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let checkBox = CheckBoxButton()
    
    let agreeLabel: UILabel = {
        let lbl = UILabel()
        lbl.textColor = UIColor(red: 0.247, green: 0.255, blue: 0.58, alpha: 0.89)
        lbl.font = UIFont(name: "PlusJakartaSans-Medium", size: 13)
        lbl.text = "I AGREE WITH ALL TERM AND CONDITIONS"
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
        let gesture1 = UITapGestureRecognizer(target: self, action: #selector(didCheckButtonTapped))
        checkBox.addGestureRecognizer(gesture1)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let gradiant = UIImage.gradientImage(bounds: termAndConditionsLabel.bounds, colors: [UIColor.textBlue, UIColor.textBlueSecound])
        termAndConditionsLabel.textColor = UIColor(patternImage: gradiant)
        
        continueButton.applyButtonGradiant(color: [UIColor(red: 0.779, green: 0.341, blue: 0.353, alpha: 1).cgColor, UIColor(red: 0.608, green: 0.165, blue: 0.19, alpha: 1).cgColor])
    }
    //MARK: -Functions-
    
    private func setUpViews() {
        navigationController?.isNavigationBarHidden = true
        view.backgroundColor = .white
        view.addSubview(termAndConditionsLabel)
        NSLayoutConstraint.activate([
            termAndConditionsLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 70),
            termAndConditionsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            termAndConditionsLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            //termAndConditionsLabel.widthAnchor.constraint(equalToConstant: 299),
            //termAndConditionsLabel.heightAnchor.constraint(equalToConstant: 80)
        ])
        view.addSubview(rulesLbl)
        NSLayoutConstraint.activate([
            rulesLbl.topAnchor.constraint(equalTo: termAndConditionsLabel.bottomAnchor, constant: 30),
            rulesLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            rulesLbl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            rulesLbl.heightAnchor.constraint(equalToConstant: 400)
        ])
        view.addSubview(checkBox)
        checkBox.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(agreeLabel)
        NSLayoutConstraint.activate([
            checkBox.topAnchor.constraint(equalTo: rulesLbl.bottomAnchor, constant: 14),
            checkBox.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            checkBox.widthAnchor.constraint(equalToConstant: 18),
            checkBox.heightAnchor.constraint(equalToConstant: 18),
            
            agreeLabel.topAnchor.constraint(equalTo: rulesLbl.bottomAnchor, constant: 14),
            agreeLabel.leadingAnchor.constraint(equalTo: checkBox.trailingAnchor, constant: 10),
            
        ])
        view.addSubview(continueButton)
        NSLayoutConstraint.activate([
            continueButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -70),
            continueButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            continueButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            continueButton.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
    
    @objc func continueButtonTapped(_ sender: UIButton) {
        if checkBox.isChecked == true {
            let vc = LoadingViewController()
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    @objc func didCheckButtonTapped() {
        checkBox.toggle()
    }
}
