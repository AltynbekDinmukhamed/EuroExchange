//
//  CheckBoxView.swift
//  EuroExchange
//
//  Created by Димаш Алтынбек on 29.07.2023.
//

import Foundation
import UIKit

class CheckBoxButton: UIView {
    //MARK: -Variables-
    var isChecked = false
    
    let imageView: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFit
        img.isHidden = true
        img.tintColor = UIColor(red: 0.25, green: 0.25, blue: 0.58, alpha: 0.63)
        img.image = UIImage(systemName: "checkmark")
        return img
    }()
    
    //MARK: -LifeCycle-
    override init(frame: CGRect) {
        super.init(frame: frame)
        layer.borderColor = UIColor(red: 0.25, green: 0.25, blue: 0.58, alpha: 0.63).cgColor
        addSubview(imageView)
        backgroundColor = .white
        clipsToBounds = true
        layer.borderWidth = 2
        layer.cornerRadius = 5
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = bounds
    }
    //MARK: -functions-
    public func toggle() {
        self.isChecked = !isChecked
        
        imageView.isHidden = !isChecked
    }
    
}
