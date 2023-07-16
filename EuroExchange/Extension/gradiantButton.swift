//
//  gradiantExtension.swift
//  EuroExchange
//
//  Created by Димаш Алтынбек on 13.07.2023.
//

import Foundation
import UIKit

extension UIButton {
    func applyButtonGradiant(color: [CGColor]) {
        let gradiant = CAGradientLayer()
        gradiant.colors = color
        gradiant.cornerRadius = layer.cornerRadius
        gradiant.startPoint = CGPoint(x: 0, y: 0)
        gradiant.endPoint = CGPoint(x: 1, y: 0)
        gradiant.frame = bounds
        layer.insertSublayer(gradiant, at: 0)
    }
}
