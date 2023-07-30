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

extension UIImage {
    static func gradientImage(bounds: CGRect, colors: [UIColor]) -> UIImage {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = colors.map(\.cgColor)
        // This makes it left to right, default is top to bottom
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)

        let renderer = UIGraphicsImageRenderer(bounds: bounds)

        return renderer.image { ctx in
            gradientLayer.render(in: ctx.cgContext)
        }
    }
}

extension UIView {
    func applyCardGradiant(color: [CGColor]) {
        let gradiant = CAGradientLayer()
        gradiant.colors = color
        gradiant.startPoint = CGPoint(x: 0, y: 0)
        gradiant.endPoint = CGPoint(x: 1, y: 0)
        gradiant.frame = bounds
        layer.insertSublayer(gradiant, at: 0)
    }
}
