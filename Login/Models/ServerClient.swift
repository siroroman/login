//
//  ServerClient.swift
//  Copyright © 2017 Roman Siro. All rights reserved.
//

import Foundation
import Alamofire

final class ServerClient {
    
    static let shared = ServerClient()
    private init() {}
    
    typealias SuccessHandler = ([String : AnyObject]?) -> Void
    typealias FailureHandler = (Error?) -> Void
    
    let headers: HTTPHeaders = ["Token": Token.token ?? ""]
    
    //Login
    func login(email: String, password: String, success: @escaping SuccessHandler,  failure: @escaping FailureHandler)  {
        
        let url: String = "http://www.json-generator.com/api/json/get/bOnfewGywi?indent=2"
        let parameters = ["email": email, "password": password]
        
        Alamofire.request(url, method: .post, parameters: parameters).validate().responseJSON { response in
            switch response.result {
            case .success: success(response.result.value as? [String : AnyObject] )
            case .failure: failure(response.result.error)
            }
        }
    }
    
}
