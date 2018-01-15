//
//  TextField.swift
//
//  Created by Roman Siro on 04.09.17.
//  Copyright © 2017 Roman Siro. All rights reserved.
//

import UIKit

class TextField:UITextField {
    
    override var placeholder: String? {
        didSet {
            let style = Constants.Styles.inputPlaceholder
            attributedPlaceholder = NSAttributedString(string: placeholder ?? "",
                                                       attributes: [NSAttributedStringKey.foregroundColor: style.color, NSAttributedStringKey.font: style.font])
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        config()
    }
    
    
    private func config() {
        let style = Constants.Styles.inputText
        borderStyle = .none
        
        //Color
        backgroundColor = UIColor.clear
        makeBottomBorder(color: Constants.Colors.lineGray , width: 1)
        textColor = style.color
        
        font = style.font
    }
    
    //Bottom line
    private func  makeBottomBorder(color: UIColor, width: CGFloat) {
        var bottomBorder = UIView()
        self.translatesAutoresizingMaskIntoConstraints = false
        bottomBorder = UIView.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        bottomBorder.backgroundColor = color
        bottomBorder.translatesAutoresizingMaskIntoConstraints = false
        addSubview(bottomBorder)
        
        bottomBorder.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        bottomBorder.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        bottomBorder.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        bottomBorder.heightAnchor.constraint(equalToConstant: width).isActive = true
    }
}
