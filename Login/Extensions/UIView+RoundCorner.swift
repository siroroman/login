//
//  UIView+RoundCorner.swift
//
//  Created by Roman Siro on 22.09.17.
//  Copyright © 2017 Roman Siro. All rights reserved.
//

import UIKit

extension UIView {
    
    func makeRoundCorners() {
        layer.cornerRadius = Constants.UI.cornerRadius
    }
    
}
