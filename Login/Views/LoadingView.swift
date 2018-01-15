//
//  LoadingView.swift
//
//  Created by Roman Siro on 15.09.17.
//  Copyright © 2017 Roman Siro. All rights reserved.
//

import UIKit

class LoadingView: UIView {
    
    var spinner:KDLoadingView!
    private var label: Label!
    
    let color1 = Constants.Colors.green
    
    var title: String? {
        didSet {
            label.text = title
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        config()
    }
    
     required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        config()
    }
    
    private func config() {
        self.backgroundColor = Constants.Colors.backgroundGray
        
        spinner = KDLoadingView(frame: CGRect.zero, lineWidth: 5, firstColor: color1, secondColor: nil, thirdColor: nil, duration: 5)
        spinner.addSizeConstraints(width: 40, height: 40)
        addCenterConstraints(view: spinner)
        spinner.startAnimating()
        
        label = Label()
        label.style = Constants.Styles.basicText
        addCenterConstraints(view: label, inset: CGPoint(x: 0, y: 44))
    }
    
}

