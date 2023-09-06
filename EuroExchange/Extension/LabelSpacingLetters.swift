//
//  LabelSpacingLetters.swift
//  EuroExchange
//
//  Created by Димаш Алтынбек on 24.08.2023.
//

import Foundation
import UIKit

extension UILabel {
    func addCharacterSpacing(kernValue: Double = 3.0) {
    if let labelText = text, labelText.count > 0 {
      let attributedString = NSMutableAttributedString(string: labelText)
        attributedString.addAttribute(NSAttributedString.Key.kern, value: kernValue, range: NSRange(location: 0, length: attributedString.length - 1))
      attributedText = attributedString
    }
  }
}
