//
//  TableViewController.swift
//  MVVM-2
//
//  Created by Лолита on 01.04.2021.
//  Copyright © 2021 Lolita Chernysheva. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var profiles: [Profile]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profiles = [
            Profile(name: "John", secondName: "Watson", age: 33),
            Profile(name: "Sherlock", secondName: "Holmes", age: 35),
            Profile(name: "Eliza", secondName: "Bennet", age: 26)
        ]
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        guard let profilesCount = profiles.count else {
            return 0
        }
        return profilesCount
    }
    
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell
        
        guard let tableViewCell = cell else { return UITableViewCell() }
        let profile = profiles[indexPath.row]
        tableViewCell.ageLabel.text = "\(profile.age)"
        tableViewCell.fullNameLabel.text = "\(profile.name) \(profile.secondName)"
     return tableViewCell
     }
    
}
