//
//  ActionButton.swift
//
//  Created by Roman Siro on 04.09.17.
//  Copyright © 2017 Roman Siro. All rights reserved.
//

import UIKit

class ActionButton: UIButton {
    
    var color: UIColor  =  Constants.Colors.blue {
        didSet {
            setBackgroundColor(color: color, forState: .normal)
        }
    }
    
    override open var isHighlighted: Bool {
        didSet {
            let normalColor = color
            let highlightedColor = normalColor.darker(by: 15)
            backgroundColor = isHighlighted ? highlightedColor : normalColor
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        config()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    
    }
    
    private func config() {
        let style = Constants.Styles.button
        
        //Colors
        setBackgroundColor(color: color, forState: .normal)
        setTitleColor(style.color, for: .normal)
        setTitleColor(style.color, for: .highlighted)
        
        //Fonts
        titleLabel?.font = style.font
        
        makeRoundCorners()
        clipsToBounds = true
    }
}
