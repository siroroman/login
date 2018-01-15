//
//  String+EmailValidation.swift
//
//  Created by Roman Siro on 29.09.17.
//  Copyright © 2017 Roman Siro. All rights reserved.
//

import Foundation

extension String {
   
    var isValidEmailaddress: Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self)
    }
    
}
