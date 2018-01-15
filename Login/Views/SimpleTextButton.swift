//
//  SimpleTextButton.swift
//
//  Created by Roman Siro on 04.09.17.
//  Copyright © 2017 Roman Siro. All rights reserved.
//

import UIKit

class SimpleTextButton: Button{
    
    override func awakeFromNib() {
        super.awakeFromNib()
        config()
    }
    
    func config() {
        let style = Constants.Styles.button
        setTitleColor(Constants.Colors.regularText, for: .normal)
        
        //Fonts
        titleLabel?.font = style.font
    }
    
}

