//
//  Label.swift
//
//  Created by Roman Siro on 04.09.17.
//  Copyright © 2017 Roman Siro. All rights reserved.
//

import UIKit

class Label:  UILabel {
    var style: LabelStyle? {
        didSet {
            font = style?.font
            textColor = style?.color
            text = style?.allCaps == true  ? text?.uppercased() : text
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        numberOfLines = 0
    }
}

struct LabelStyle {
    var font: UIFont
    var color: UIColor
    var allCaps: Bool
}
