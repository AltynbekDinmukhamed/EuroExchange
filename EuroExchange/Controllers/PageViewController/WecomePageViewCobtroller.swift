////
////  WecomePageViewCobtroller.swift
////  EuroExchange
////
////  Created by Димаш Алтынбек on 16.07.2023.
////
//
//import Foundation
//import UIKit
//
//class WelcomePageViewController: UIPageViewController {
//    var pages = [UIViewController]()
//    let pageControl = UIPageControl()
//    let initialPage = 0
//
//    //MARK: -Life Cycle-
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        setUp()
//        style()
//        layout()
//    }
//
//    private func setUp() {
//        dataSource = self
//        delegate = self
//
//        pageControl.addTarget(self, action: #selector(pageControlTapped), for: .valueChanged)
//
//        // create an array of viewController
////        let page1 = ViewController1()
////        let page2 = ViewController2()
////        let page3 = ViewController3()
////
////        pages.append(page1)
////        pages.append(page2)
////        pages.append(page3)
//
//        // set initial viewController to be displayed
//        // Note: We are not passing in all the viewControllers here. Only the one to be displayed.
//        setViewControllers([pages[initialPage]], direction: .forward, animated: true, completion: nil)
//    }
//
//    func style() {
//            pageControl.translatesAutoresizingMaskIntoConstraints = false
//            pageControl.currentPageIndicatorTintColor = .black
//            pageControl.pageIndicatorTintColor = .systemGray2
//            pageControl.numberOfPages = pages.count
//            pageControl.currentPage = initialPage
//    }
//
//    func layout() {
//            view.addSubview(pageControl)
//
//            NSLayoutConstraint.activate([
//                pageControl.widthAnchor.constraint(equalTo: view.widthAnchor),
//                pageControl.heightAnchor.constraint(equalToConstant: 20),
//                view.bottomAnchor.constraint(equalToSystemSpacingBelow: pageControl.bottomAnchor, multiplier: 1),
//            ])
//    }
//
//    @objc private func pageControlTapped(_ sender: UIPageViewController) {
//
//    }
//}
//
//extension WelcomePageViewController: UIPageViewControllerDataSource{
//    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
//        <#code#>
//    }
//
//    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
//        <#code#>
//    }
//
//
//}
//
//extension WelcomePageViewController: UIPageViewControllerDelegate {
//
//}
