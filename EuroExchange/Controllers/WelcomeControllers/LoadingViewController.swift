//
//  LoadingViewController.swift
//  EuroExchange
//
//  Created by Димаш Алтынбек on 29.07.2023.
//

import Foundation
import UIKit

class LoadingViewController: UIViewController {
    //MARK: -Controllers
    let backgroundImage: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "welcomeBackground")
        img.contentMode = .scaleAspectFill
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    let waitingImg: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "loading")
        img.contentMode = .scaleAspectFit
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    let waitLbl: UILabel = {
        let lbl = UILabel()
        lbl.text = "Wait..."
        lbl.textColor = UIColor(red: 0.247, green: 0.255, blue: 0.58, alpha: 0.63)
        lbl.font = UIFont(name: "PlusJakartaSans-Medium", size: 20)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    //MARK: -LifeCycle-
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
        timerStart()
    }
    //MARK: -Functions-
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
        view.addSubview(waitingImg)
        NSLayoutConstraint.activate([
            waitingImg.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            waitingImg.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            waitingImg.widthAnchor.constraint(equalToConstant: 170),
            waitingImg.heightAnchor.constraint(equalToConstant: 182),
        ])
        view.addSubview(waitLbl)
        NSLayoutConstraint.activate([
            waitLbl.topAnchor.constraint(equalTo: waitingImg.bottomAnchor, constant: 15),
            waitLbl.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
    
    private func timerStart() {
        let timer = Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(timerVcOpen), userInfo: nil, repeats: false)
    }
    
    @objc func timerVcOpen(){
        let vc = ErrorViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}
