//
//  pinCodeView.swift
//  EuroExchange
//
//  Created by Димаш Алтынбек on 20.08.2023.
//

import Foundation
import UIKit

protocol openVC {
    func openVC(vc: UIViewController)
}

class pinCodeView: UIView {
    //MARK: -variables-
    let buttonStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.spacing = 20
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    //MARK: first row
    let firstRowStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.spacing = 39
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    let firstButton: UIButton = {
       let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 70, height: 70))
        btn.setTitle("1", for: .normal)
        btn.titleLabel?.font = UIFont(name: "PlusJakartaSans-Medium", size: 28)
        btn.setTitleColor(.black, for: .normal)
        btn.layer.borderWidth = 1
        btn.layer.cornerRadius = btn.frame.height / 2
        btn.layer.borderColor = UIColor(red: 0.247, green: 0.255, blue: 0.58, alpha: 0.2).cgColor
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    let seocundButton: UIButton = {
       let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 70, height: 70))
        btn.setTitle("2", for: .normal)
        btn.titleLabel?.font = UIFont(name: "PlusJakartaSans-Medium", size: 28)
        btn.setTitleColor(.black, for: .normal)
        btn.layer.borderWidth = 1
        btn.layer.cornerRadius = btn.frame.height / 2
        btn.layer.borderColor = UIColor(red: 0.247, green: 0.255, blue: 0.58, alpha: 0.2).cgColor
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    let thirdButton: UIButton = {
       let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 70, height: 70))
        btn.setTitle("3", for: .normal)
        btn.titleLabel?.font = UIFont(name: "PlusJakartaSans-Medium", size: 28)
        btn.setTitleColor(.black, for: .normal)
        btn.layer.borderWidth = 1
        btn.layer.cornerRadius = btn.frame.height / 2
        btn.layer.borderColor = UIColor(red: 0.247, green: 0.255, blue: 0.58, alpha: 0.2).cgColor
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    //MARK: secound row
    let secoundRowStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.spacing = 39
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    let fourButton: UIButton = {
       let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 70, height: 70))
        btn.setTitle("4", for: .normal)
        btn.titleLabel?.font = UIFont(name: "PlusJakartaSans-Medium", size: 28)
        btn.setTitleColor(.black, for: .normal)
        btn.layer.borderWidth = 1
        btn.layer.cornerRadius = btn.frame.height / 2
        btn.layer.borderColor = UIColor(red: 0.247, green: 0.255, blue: 0.58, alpha: 0.2).cgColor
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    lazy var fiveButton: UIButton = {
       let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 70, height: 70))
        btn.setTitle("5", for: .normal)
        btn.titleLabel?.font = UIFont(name: "PlusJakartaSans-Medium", size: 28)
        btn.setTitleColor(.black, for: .normal)
        btn.layer.borderWidth = 1
        btn.layer.cornerRadius = btn.frame.height / 2
        btn.layer.borderColor = UIColor(red: 0.247, green: 0.255, blue: 0.58, alpha: 0.2).cgColor
        btn.addTarget(self, action: #selector(btnTapped), for: .touchUpInside)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    let sixButton: UIButton = {
       let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 70, height: 70))
        btn.setTitle("6", for: .normal)
        btn.titleLabel?.font = UIFont(name: "PlusJakartaSans-Medium", size: 28)
        btn.setTitleColor(.black, for: .normal)
        btn.layer.borderWidth = 1
        btn.layer.cornerRadius = btn.frame.height / 2
        btn.layer.borderColor = UIColor(red: 0.247, green: 0.255, blue: 0.58, alpha: 0.2).cgColor
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    //MARK: third row
    let thirdRowStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.spacing = 39
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    let sevenButton: UIButton = {
       let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 70, height: 70))
        btn.setTitle("7", for: .normal)
        btn.titleLabel?.font = UIFont(name: "PlusJakartaSans-Medium", size: 28)
        btn.setTitleColor(.black, for: .normal)
        btn.layer.borderWidth = 1
        btn.layer.cornerRadius = btn.frame.height / 2
        btn.layer.borderColor = UIColor(red: 0.247, green: 0.255, blue: 0.58, alpha: 0.2).cgColor
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    let eightButton: UIButton = {
       let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 70, height: 70))
        btn.setTitle("8", for: .normal)
        btn.titleLabel?.font = UIFont(name: "PlusJakartaSans-Medium", size: 28)
        btn.setTitleColor(.black, for: .normal)
        btn.layer.borderWidth = 1
        btn.layer.cornerRadius = btn.frame.height / 2
        btn.layer.borderColor = UIColor(red: 0.247, green: 0.255, blue: 0.58, alpha: 0.2).cgColor
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    let nineButton: UIButton = {
       let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 70, height: 70))
        btn.setTitle("9", for: .normal)
        btn.titleLabel?.font = UIFont(name: "PlusJakartaSans-Medium", size: 28)
        btn.setTitleColor(.black, for: .normal)
        btn.layer.borderWidth = 1
        btn.layer.cornerRadius = btn.frame.height / 2
        btn.layer.borderColor = UIColor(red: 0.247, green: 0.255, blue: 0.58, alpha: 0.2).cgColor
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    //MARK: Last
    let fourthRowStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.spacing = 39
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    let disaperView: UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 70, height: 70))
        view.translatesAutoresizingMaskIntoConstraints = false
        //view.layer.cornerRadius = view.frame.height / 2
        return view
    }()
    
    let zeroButton: UIButton = {
       let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 70, height: 70))
        btn.setTitle("0", for: .normal)
        btn.titleLabel?.font = UIFont(name: "PlusJakartaSans-Medium", size: 28)
        btn.layer.borderWidth = 1
        btn.layer.cornerRadius = btn.frame.height / 2
        btn.setTitleColor(.black, for: .normal)
        btn.layer.borderColor = UIColor(red: 0.247, green: 0.255, blue: 0.58, alpha: 0.2).cgColor
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    let deleateBtn: UIButton = {
        let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 35, height: 33))
        btn.setBackgroundImage(UIImage(systemName: "delete.left.fill"), for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    //MARK: result
    var pin = [Int]()
    
    var delegate: openVC?
    
    //MARK: -LifeCycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    //MARK: -Function-
    private func setUpViews() {
        addSubview(buttonStack)
        NSLayoutConstraint.activate([
            buttonStack.topAnchor.constraint(equalTo: topAnchor),
            buttonStack.leadingAnchor.constraint(equalTo: leadingAnchor),
            buttonStack.bottomAnchor.constraint(equalTo: bottomAnchor),
            buttonStack.trailingAnchor.constraint(equalTo: trailingAnchor),
        ])
        //MARK: first row
        buttonStack.addArrangedSubview(firstRowStack)
        firstRowStack.addArrangedSubview(firstButton)
        firstRowStack.addArrangedSubview(seocundButton)
        firstRowStack.addArrangedSubview(thirdButton)
        //MARK: secound row
        buttonStack.addArrangedSubview(secoundRowStack)
        secoundRowStack.addArrangedSubview(fourButton)
        secoundRowStack.addArrangedSubview(fiveButton)
        secoundRowStack.addArrangedSubview(sixButton)
        //MARK: third row
        buttonStack.addArrangedSubview(thirdRowStack)
        thirdRowStack.addArrangedSubview(sevenButton)
        thirdRowStack.addArrangedSubview(eightButton)
        thirdRowStack.addArrangedSubview(nineButton)
        //MARK: Last Part
        buttonStack.addArrangedSubview(fourthRowStack)
        fourthRowStack.addArrangedSubview(disaperView)
        fourthRowStack.addArrangedSubview(zeroButton)
        fourthRowStack.addArrangedSubview(deleateBtn)
        NSLayoutConstraint.activate([
            deleateBtn.widthAnchor.constraint(equalToConstant: 35),
            deleateBtn.heightAnchor.constraint(equalToConstant: 33)
        ])
    }
    
    //MARK: -Actions-
    @objc func btnTapped(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected

        if (sender.isSelected){
            sender.backgroundColor = UIColor.gray
            Timer.scheduledTimer(withTimeInterval: 0.2, repeats: false) { timer in
                sender.backgroundColor = UIColor.white
            }
        } else {
            sender.backgroundColor = UIColor.white
        }
        
        let value = sender.tag
        pin.append(value)
        if pin.count == 4 {
            let vc = MainToolBarViewController()
            delegate?.openVC(vc: vc)
        }
    }
}
