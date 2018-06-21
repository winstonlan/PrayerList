//
//  PrayerRequest.swift
//  PrayerList
//
//  Created by Winston Lan on 6/18/18.
//  Copyright © 2018 Winston Lan. All rights reserved.
//

import Foundation

struct PrayerRequest {
    let detail:String
    
    init(newDetail:String) {
        self.detail = newDetail
    }
    
    static func prayerRequests() -> Array<PrayerRequest> {
        let pq1 = PrayerRequest(newDetail: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")
        let pq2 = PrayerRequest(newDetail: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")
        let pq3 = PrayerRequest(newDetail: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")
        return [pq1, pq2, pq3]
    }
}
