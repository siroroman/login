//
//  UIView+Gradient.swift
//
//  Created by Roman Siro on 04.09.17.
//  Copyright © 2017 Roman Siro. All rights reserved.
//

import UIKit

extension UIView {
    func fillWithGradient(startColor: UIColor , endColor: UIColor, startPoint: CGPoint, endPoint: CGPoint) {
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [startColor.cgColor, endColor.cgColor]
        
        gradientLayer.startPoint = startPoint
        gradientLayer.endPoint = endPoint

        layer.addSublayer(gradientLayer)
    }
}

