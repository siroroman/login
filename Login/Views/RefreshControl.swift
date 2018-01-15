//
//  RefreshControl.swift
//
//  Created by Roman Siro on 03.10.17.
//  Copyright © 2017 Roman Siro. All rights reserved.
//

import UIKit

class RefreshControl: UIRefreshControl {

    override func awakeFromNib() {
        super.awakeFromNib()
        config()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        config()
    }
    
    override init() {
        super.init()
        config()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    private func config() {
        setActivityIndicatorStyle()
        tintColor = Constants.Colors.lighText
    }
    
    private func setActivityIndicatorStyle() {
        for view in subviews {
            if let indicator = view as? UIActivityIndicatorView {
                indicator.activityIndicatorViewStyle = .white
            }
        }
    }
   

}
