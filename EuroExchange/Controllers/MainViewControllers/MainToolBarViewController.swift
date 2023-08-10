//
//  MainToolBarViewController.swift
//  EuroExchange
//
//  Created by Димаш Алтынбек on 30.07.2023.
//

import Foundation
import UIKit

class MainToolBarViewController: UITabBarController {
    //MARK: -variable-
    
    
    //MARK: -LifeCycle-
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        generateToolBar()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    
    //MARK: -Functions-
    private func generateToolBar() {
        let home = createNav(with: "home", and: UIImage(systemName: "house"), vc: HomeViewController())
        let firstViews = createNav(with: "Home", and: UIImage(systemName: "house"), vc: AddNewCardViewController())
        let secoundView = createNav(with: "Exchange", and: UIImage(named: "Exhangelogo"), vc: ExchangeCurrency())
        let thirdView = createNav(with: "Card info", and: UIImage(systemName: "house"), vc: CardInfoViewController())
        
        setViewControllers([home, firstViews, secoundView, thirdView], animated: true)
    }
    
    private func createNav(with title: String, and image: UIImage?, vc: UIViewController) -> UINavigationController {
        let nav = UINavigationController(rootViewController: vc)
        
        nav.tabBarItem.image = image
        
        nav.viewControllers.first?.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Button", style: .plain, target: self, action: nil)
        
        return nav
    }
}
