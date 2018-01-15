//
//  SpinnerAlertController.swift
//
//  Created by Roman Siro on 27.09.17.
//  Copyright © 2017 Roman Siro. All rights reserved.
//

import UIKit

class SpinnerAlertController: UIAlertController {
    
    var indicator: UIActivityIndicatorView!
    
    static func defaultSpinerAlert(title: String, buttonTitle: String?, buttonAction: ((_: AnyObject) -> Void)?) -> SpinnerAlertController {
        
        let alertView = SpinnerAlertController(title: title, message: " \n\n ", preferredStyle: .alert)
        
        guard buttonTitle != nil else {return alertView}
        
        let action = UIAlertAction(title: buttonTitle, style: .default, handler: buttonAction)
        alertView.addAction(action)
        
        return alertView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupIndicator()
    }
    
    private func setupIndicator() {
        indicator = UIActivityIndicatorView(frame: view.bounds)
        indicator.activityIndicatorViewStyle = .gray
        indicator.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.addSubview(indicator)
        indicator.isUserInteractionEnabled = false
        indicator.startAnimating()
    }
}
