//
//  UIViewController+Controllers.swift
//
//  Created by Roman Siro on 04.09.17.
//  Copyright © 2017 Roman Siro. All rights reserved.
//

import UIKit

extension UIViewController {
   
    func showLoadingScreen(spinnerText: String) {
        let vc = LoadingVC()
        vc.spinnerText = spinnerText
        vc.modalTransitionStyle = .crossDissolve
        present(vc, animated: true, completion: nil)
    }
    
}

