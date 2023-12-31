//
//  PaddingLabel.swift
//  EuroExchange
//
//  Created by Димаш Алтынбек on 27.07.2023.
//

import Foundation
import UIKit
 
@IBDesignable class PaddingLabel: UILabel {
      @IBInspectable var topInset: CGFloat = 5.0
      @IBInspectable var bottomInset: CGFloat = 5.0
      @IBInspectable var leftInset: CGFloat = 16.0
      @IBInspectable var rightInset: CGFloat = 16.0
    
    override func draw(_ rect: CGRect) {
        let insets = UIEdgeInsets(top: topInset, left: leftInset, bottom: bottomInset, right: rightInset)
        super.drawText(in: rect.inset(by: insets))
    }
    
    override var intrinsicContentSize: CGSize {
        let size = super.intrinsicContentSize
        return CGSize(width: size.width + leftInset + rightInset,
        height: size.height + topInset + bottomInset)
    }
}
