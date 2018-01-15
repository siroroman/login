//
//  LoadingVC.swift
//
//  Created by Roman Siro on 15.09.17.
//  Copyright © 2017 Roman Siro. All rights reserved.
//

import UIKit

class LoadingVC: BaseViewController {
    
    var spinnerText: String? {
        didSet {
            loadingView.title = spinnerText
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addFullSizeConstraints(view: loadingView)
    }
}
