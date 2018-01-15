//
//  LoginVM.swift
//
//  Created by Roman Siro on 05.09.17.
//  Copyright © 2017 Roman Siro. All rights reserved.
//

import Foundation

enum LoginError: Error {
    case noEmail
    case noPassword
    case noData
    case invalidEmail
    case noMatch
    case noConnection
    case general
}

extension LoginError: LocalizedError {
    
    public var errorDescription: String? {
        switch self {
        case .noEmail: return NSLocalizedString("login_error_no_email", comment: "")
        case .noPassword: return NSLocalizedString("login_error_no_password", comment: "")
        case .noData: return NSLocalizedString("login_error_no_data", comment: "")
        case .invalidEmail: return NSLocalizedString("login_error_invalid_email", comment: "")
        case .noMatch: return NSLocalizedString("login_error_no_match", comment: "")
        case .noConnection: return NSLocalizedString("login_error_no_connection", comment: "")
        case .general: return NSLocalizedString("login_error_general", comment: "")
        }
    }
}

class LoginVM {
    
    var email: String = ""
    var password: String = ""
    
    var succesHandler: () -> Void = {}
    var failureHandler: (_ errorText: String) -> Void = {_ in}
    var loadingStartHandler: () -> Void = {}
    
    private func validate() throws {
        if email.isEmpty && password.isEmpty {throw LoginError.noData}
        if email.isEmpty {throw LoginError.noEmail}
        if email.isValidEmailaddress == false {throw LoginError.invalidEmail}
        if password.isEmpty {throw LoginError.noPassword}
    }
    
    private func login() {
        //Check internet connection
        if Reachability.isInternetAvailable() == false {
            failureHandler(LoginError.general.localizedDescription)
            return
        }
        
        //Validate
        do {
            try validate()
        }catch {
            failureHandler(error.localizedDescription)
            return
        }
        
        //Request
        loadingStartHandler()
        ServerClient.shared.login(email: email, password: password, success: {data in self.processResponseData(data: data)}, failure: {error in self.failureHandler(LoginError.general.localizedDescription)})
    }
    
    private func processResponseData(data:[String: Any]?) {
        if let data = data ,let status = data["status"] as? Int, let token = data["token"] as? String {
            if status == 1 {
                Token.save(token: token)
                 self.succesHandler()

            } else {
                failureHandler(LoginError.noMatch.localizedDescription)
            }
            
            return
        }

        failureHandler(LoginError.general.localizedDescription)
    }
    
    func loginButtonTapped() {
        login()
    }
    
    var isLogged: Bool {
        return Token.token != nil
    }
    
    private func resetData() {
        email = ""
        password = ""
    }
    
}
