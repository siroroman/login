//
//  Button.swift
//
//  Created by Roman Siro on 21.09.17.
//  Copyright © 2017 Roman Siro. All rights reserved.
//

import UIKit

class Button: UIButton {
    
    var color: UIColor  =  Constants.Colors.white {
        didSet {
            setBackgroundColor(color: color, forState: .normal)
        }
    }
    
    override open var isHighlighted: Bool {
        didSet {
            let normalColor = color
            let highlightedColor = color == UIColor.clear ? UIColor.black.withAlphaComponent(0.15) : normalColor.darker(by: 15)
            backgroundColor = isHighlighted ? highlightedColor : normalColor
        }
    }
   
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}
