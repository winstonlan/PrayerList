//
//  User.swift
//  PrayerList
//
//  Created by Winston Lan on 6/18/18.
//  Copyright © 2018 Winston Lan. All rights reserved.
//

import Foundation

struct User {
    let uid: String
    let email: String
    
    init(uid: String, email: String) {
        self.uid = uid
        self.email = email
    }
    
    func fakeUsers() -> Array<User>{
        let u1 = User(uid: "uid1", email: "ms@dm.com")
        let u2 = User(uid: "uid2", email: "jh@dm.com")
        let u3 = User(uid: "uid3", email: "pb@dm.com")
        return [u1, u2, u3]
    }
}
