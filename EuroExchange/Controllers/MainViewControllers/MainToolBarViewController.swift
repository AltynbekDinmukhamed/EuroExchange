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
        generateToolBar()
    }
    
    //MARK: -Functions-
    private func generateToolBar() {
        viewControllers = [
            
        ]
    }
    
    private func generanteVc(viewController: UIViewController, image: UIImage?) -> UIViewController {
        viewController.tabBarItem.image = image
        return viewController
    }
}
