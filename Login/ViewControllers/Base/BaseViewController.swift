 //
//  BaseViewController.swift
//
//  Created by Roman Siro on 04.09.17.
//  Copyright © 2017 Roman Siro. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    lazy var loadingView: LoadingView = LoadingView(frame: CGRect.zero)
    
    private var height: CGFloat = 0.0
    
    var customBarHeight:CGFloat {
        return 0.0
    }
    
    var refreshControl: RefreshControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        height = view.bounds.height
    
        view.backgroundColor = Constants.Colors.backgroundGray
        
        edgesForExtendedLayout = UIRectEdge.init(rawValue: 0)
        automaticallyAdjustsScrollViewInsets = false
        
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        let backItem = UIBarButtonItem()
        backItem.title = ""
        navigationItem.backBarButtonItem = backItem
    }
    
    func reloadData() {}
    
    func setupRefreshControl() {
        refreshControl = RefreshControl()
        refreshControl.attributedTitle = NSAttributedString(string: NSLocalizedString("refreshing", comment: ""))
        refreshControl.addTarget(self, action: #selector(startRefreshingData), for: .valueChanged)
    }
    
    @objc func startRefreshingData() {}
    
}
