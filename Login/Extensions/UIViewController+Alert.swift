//
//  UIViewController+Alert.swift
//
//  Created by Roman Siro on 27.09.17.
//  Copyright © 2017 Roman Siro. All rights reserved.
//

import UIKit

extension UIViewController {
    //Alert
    func showAlert(title: String?, message: String?, animated: Bool = true) {
        let alertView = UIAlertController(title: title ?? "", message: message ?? "", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: { (alert) in
            
        })
        alertView.addAction(action)
        present(alertView, animated: animated, completion: nil)
    }

    
    func showSpinnerAlert(title: String, buttonTitle: String?, buttonAction: ((AnyObject) -> Void)?) {
        let alertView = SpinnerAlertController.defaultSpinerAlert(title: title, buttonTitle: buttonTitle, buttonAction: buttonAction)
        
        present(alertView, animated: true, completion: nil)
    }
    
    
    func showAlertWithActions(title: String?, message: String?, actions:[(title: String, handler: ((_: UIAlertAction) -> Void)?, isDestructive: Bool)], animated: Bool = true) {
        let alertView = UIAlertController(title: title ?? "", message: message ?? "", preferredStyle: .alert)
        
        for action in actions {
            let style = action.isDestructive ? UIAlertActionStyle.destructive : UIAlertActionStyle.default
            let alertAction = UIAlertAction(title: action.title, style: style , handler: action.handler)
            alertView.addAction(alertAction)

        }
        
        present(alertView, animated: animated, completion: nil)
    }
    
    func showErrorAlert(message: String) {
        showAlert(title: NSLocalizedString("error_title", comment: ""), message: message)
    }
    
    func showNoConnectionAlert() {
        showAlert(title: NSLocalizedString("error_connection_title", comment: ""), message: NSLocalizedString("error_connection_description", comment: ""))
    }
    

}
