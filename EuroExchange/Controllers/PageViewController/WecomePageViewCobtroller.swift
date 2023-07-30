//
//  WecomePageViewCobtroller.swift
//  EuroExchange
//
//  Created by Димаш Алтынбек on 16.07.2023.
//

import Foundation
import UIKit

class WelcomePageViewController: UIViewController {
    //MARK: -Variables-
    var pageViewController: UIPageViewController!
    
    var viewControllers: [UIViewController] = {
        let firstView = WelcomeToExchangeViewController()
        let secoundViews = TermsAndConditionsViewController()
        return [firstView, secoundViews]
    }()
    //MARK: -LifeCycleretr
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationController?.isToolbarHidden = true
        pageViewController = UIPageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal)
        pageViewController.setViewControllers([viewControllers[0]], direction: .forward, animated: true)
        self.addChild(pageViewController)
        view.addSubview(pageViewController.view)
        pageViewController.view.frame = self.view.frame
        pageViewController.didMove(toParent: self)
        pageViewController.dataSource = self
    }
}

extension WelcomePageViewController: UIPageViewControllerDataSource {
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let index = viewControllers.firstIndex(of: viewController) else {
            return nil
        }
        
        let reducedIndex = index - 1
        
        guard reducedIndex >= 0 else {
            return nil
        }
        guard viewControllers.count > reducedIndex else {
            return nil
        }
        return viewControllers[reducedIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let index = viewControllers.firstIndex(of: viewController) else {
            return nil
        }
        
        let increasedIndex = index + 1
        
        guard increasedIndex >= 0 else {
            return nil
        }
        
        guard viewControllers.count > increasedIndex else {
            return nil
        }
        return viewControllers[increasedIndex]
    }
    
}
