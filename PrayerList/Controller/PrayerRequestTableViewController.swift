//
//  PrayerRequestTableViewController.swift
//  PrayerList
//
//  Created by Winston Lan on 6/21/18.
//  Copyright © 2018 Winston Lan. All rights reserved.
//

import UIKit

class PrayerRequestTableViewController: UITableViewController {
    var person:Person?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = person?.name
        
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 140
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (self.person?.prayerReqs.count)!
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PrayerReqCell", for: indexPath) as! PrayerRequestTableViewCell
        
        let pq = self.person?.prayerReqs[indexPath.row]
        cell.descriptionLabel.text = pq?.detail

        // Configure the cell...

        return cell
    }

}
