//
//  Token.swift
//
//  Created by Roman Siro on 29.09.17.
//  Copyright © 2017 Roman Siro. All rights reserved.
//

import Foundation
import RealmSwift

class Token: Object {
    @objc dynamic var token: String = ""
    
    convenience init(token: String) {
        self.init()
        self.token = token
    }
}

extension Token {
    static var token: String? {
        let realm = try! Realm()
        return realm.objects(Token.self).first?.token
    }
    
    static func save(token: String) {
        let realm = try! Realm()
        
        try! realm.write {
            let token = Token(token: token)
            realm.add(token)
        }
    }
    
    static func delete() {
        let realm = try! Realm()
        
        try!realm.write {
            let tokens = realm.objects(Token.self)
            realm.delete(tokens)
        }
    }
}
