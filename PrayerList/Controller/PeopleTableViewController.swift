//
//  PeopleTableViewController.swift
//  PrayerList
//
//  Created by Winston Lan on 6/18/18.
//  Copyright © 2018 Winston Lan. All rights reserved.
//

import UIKit

class PeopleTableViewController: UITableViewController {
    var people: Array<Person> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.people.append(contentsOf: Person.getRandomPeople())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.people.count
    }
 

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonCell", for: indexPath)

        // Configure the cell...
        let person = self.people[indexPath.row]
        cell.textLabel?.text = person.name

        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowPrayerReqs" {
            let detailViewController = segue.destination as! PrayerRequestTableViewController
            let indexPath = self.tableView.indexPathForSelectedRow!
            detailViewController.person = self.people[indexPath.row]
        }
    }
 

}
