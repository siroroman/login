//
//  LoginVC.swift
//
//  Created by Roman Siro on 04.09.17.
//  Copyright © 2017 Roman Siro. All rights reserved.
//

import UIKit

class LoginVC: BaseContentViewController {
   
    @IBOutlet weak var header: UIView!
    @IBOutlet weak var gradientView: UIView!
    @IBOutlet weak var logoImageview: UIImageView!
    @IBOutlet weak var sloganLabel:Label!
    @IBOutlet weak var emailField: TextField!
    @IBOutlet weak var passwordField: TextField!
    @IBOutlet weak var loginButton: ActionButton!
    @IBOutlet weak var forgottenPasswordButton: SimpleTextButton!
    @IBOutlet weak var loginProblemLabel: UILabel!
    
    let viewModel = LoginVM()
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Colors
        view.backgroundColor = Constants.Colors.white
        contentView.backgroundColor = Constants.Colors.white
        
        //NavBar
        navigationController?.isNavigationBarHidden = true
        
        //Texts
        sloganLabel.text = NSLocalizedString("login_slogan", comment: "")
        emailField.placeholder = NSLocalizedString("login_email", comment: "")
        passwordField.placeholder = NSLocalizedString("login_password", comment: "")
        
        loginButton.setTitle(NSLocalizedString("login_login", comment: "").uppercased(), for: .normal)
        forgottenPasswordButton.setTitle(NSLocalizedString("login_forgotten_password", comment: ""), for: .normal)
        
        loginProblemLabel.text = ""
        
        //Images
        logoImageview.image = UIImage(named: "User")
        
        //Style
        sloganLabel.style = Constants.Styles.title
        
        //TextFields
        emailField.delegate = self
        emailField.keyboardType = .emailAddress
        
        passwordField.delegate = self
        passwordField.isSecureTextEntry = true
        
        viewModel.succesHandler = handleLoginSucces
        viewModel.failureHandler = handleLoginFailure
        viewModel.loadingStartHandler = startLoading
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let green  = Constants.Colors.turquoise
        let blue = Constants.Colors.blue
        
        gradientView.fillWithGradient(startColor: green, endColor: blue, startPoint: CGPoint(x:0, y:0), endPoint: CGPoint(x:1, y:1))
    }
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        guard Reachability.isInternetAvailable() else {return}
        
        viewModel.email = emailField.text ?? ""
        viewModel.password = passwordField.text ?? ""
        viewModel.loginButtonTapped()
    }
    
    @IBAction func forgottenPasswordButtonPressed(_ sender: Any) {
        //showForgottenPasswordVC()
    }
    
    func startLoading() {
        showLoadingScreen(spinnerText: NSLocalizedString("login_signing_in", comment: ""))
    }
    
    func handleLoginSucces() {
        emailField.text = nil
        passwordField.text = nil
        dismiss(animated: true, completion: {
            self.showAlert(title: NSLocalizedString("login_success", comment: ""), message: "")
        })
    }
    
    func handleLoginFailure(errorText:String) {
        if presentedViewController != nil {
            dismiss(animated: true, completion: {self.showError(errorText:errorText)})
        } else {
            showError(errorText:errorText)
        }
    }
    
    private func showError(errorText:String) {
        showAlert(title: "", message: errorText)
    }

}
