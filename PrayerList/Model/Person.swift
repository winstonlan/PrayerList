//
//  Person.swift
//  PrayerList
//
//  Created by Winston Lan on 6/18/18.
//  Copyright © 2018 Winston Lan. All rights reserved.
//

import Foundation

struct Person {
    let name: String
    let prayerReqs: Array<PrayerRequest>
    
    init(name: String, newPrayerReqs: Array<PrayerRequest>) {
        self.name = name
        self.prayerReqs = newPrayerReqs
    }
    
    static func getRandomPeople() -> Array<Person> {
        let p1 = Person(name: "Jim Halpert", newPrayerReqs: PrayerRequest.prayerRequests())
        let p2 = Person(name: "John Doe", newPrayerReqs: PrayerRequest.prayerRequests())
        let p3 = Person(name: "Michael Scott", newPrayerReqs: PrayerRequest.prayerRequests())
        return [p1, p2, p3]
    }
    
}
